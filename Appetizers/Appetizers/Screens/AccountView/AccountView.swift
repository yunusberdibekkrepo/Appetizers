//
//  AccountView.swift
//  Appetizers
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import SwiftUI

struct AccountView: View {
    enum FormTextField {
        case firstname, lastname, email
    }

    @FocusState private var focusedTextField: FormTextField?
    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstname)
                        .onSubmit { focusedTextField = .lastname }
                        .submitLabel(.next)

                    TextField("Last Name", text: $viewModel.user.lastName)
                        .onSubmit { focusedTextField = .email }
                        .focused($focusedTextField, equals: .lastname)
                        .submitLabel(.next)

                    TextField("Email Name", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)

                    DatePicker("Birthday",
                        selection: $viewModel.user.birthdate,
                        in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                        displayedComponents: .date)

                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                } header: {
                    Text("Personel Info")
                }
                    .tint(.brandPrimary)

                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)

                } header: {
                    Text("Requests")
                }
                    .tint(.brandPrimary)
            }
                .navigationTitle("⚙ Account")
                .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") { focusedTextField = nil }
                }
            }
        }
            .onAppear {
            viewModel.retrieveUser()
        }
            .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
