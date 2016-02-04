
protocol GKStrategist : ObjectProtocol {
  var gameModel: GKGameModel? { get set }
  var randomSource: GKRandom? { get set }
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
