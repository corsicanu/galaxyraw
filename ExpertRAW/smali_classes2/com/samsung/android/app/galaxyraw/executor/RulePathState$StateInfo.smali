.class Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;
.super Ljava/lang/Object;
.source "RulePathState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/RulePathState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateInfo"
.end annotation


# instance fields
.field public nlgLandingStateId:I

.field settingKeys:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

.field public stateIdName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateIdName",
            "settingKeys"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;->stateIdName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;->settingKeys:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;->nlgLandingStateId:I

    return-void
.end method
