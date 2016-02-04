
protocol GKChallengeListener : ObjectProtocol {
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, wantsToPlay challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didReceive challenge: GKChallenge)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, didComplete challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(iOS 7.0, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
