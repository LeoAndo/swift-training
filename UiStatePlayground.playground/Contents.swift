enum UiState {
    case loading
    case failure(String)
    case success(String)
}

var uiState: UiState = UiState.loading
// uiState = .failure("Network error")
// uiState = .success("Data Loaded")

// jp) switch文でUiStateの状態によって処理を分岐する
// en) Branch processing according to the state of UiState with switch statement
switch uiState {
case .loading:
    print("loading...")
case .failure(let message):
    print(message)
case .success(let data):
    print(data)
}
