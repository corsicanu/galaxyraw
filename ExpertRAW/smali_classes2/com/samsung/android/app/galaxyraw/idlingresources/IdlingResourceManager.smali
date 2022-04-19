.class public Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;
.super Ljava/lang/Object;
.source "IdlingResourceManager.java"


# static fields
.field private static mChangeShootingModeScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

.field private static mLaunchScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

.field private static mStartRecordingScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

.field private static mStopRecordingScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

.field private static mTakePictureScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChangeShootingModeScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mChangeShootingModeScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    return-object v0
.end method

.method public static getLaunchScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mLaunchScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    return-object v0
.end method

.method public static getStartRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mStartRecordingScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    return-object v0
.end method

.method public static getStopRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mStopRecordingScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    return-object v0
.end method

.method public static getTakePictureScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mTakePictureScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    return-object v0
.end method

.method private static init()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    const-string v1, "ChangeShootingMode"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mChangeShootingModeScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    const-string v1, "Launch"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mLaunchScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    const-string v1, "StartRecording"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mStartRecordingScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    const-string v1, "StopRecording"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mStopRecordingScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    const-string v1, "TakePicture"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->mTakePictureScenario:Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    return-void
.end method

.method public static reset()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->init()V

    return-void
.end method
