.class public Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;
.super Ljava/lang/Object;
.source "CameraExecutorManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;,
        Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;,
        Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ActionStateExecutor;
    }
.end annotation


# static fields
.field private static final ACTION_FOR_MOVING_PICTURE:I = 0x1

.field private static final ACTION_FOR_PICTURE:I = 0x0

.field private static final COMMAND_BY_BIXBY_PROCESS_STATE:I = 0x1

.field private static final COMMAND_BY_BIXBY_RESTART_LAST_STATE:I = 0x2

.field private static final COMMAND_BY_BIXBY_SWITCH_CAMERA:I = 0x3

.field private static final INVALID_PARAM:I = -0x7d0

.field private static final MANUAL_TORCH_MODE:I = 0x1

.field private static final NO_PARAM:I = -0x3e8

.field private static final PROCESS_STATE_DURATION:I = 0xc8

.field private static final RETRY_LAST_STATE_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CameraExecutorManager"


# instance fields
.field private final mActionStateExecutorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ActionStateExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionStateSubExecutorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ActionStateExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBixbyInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mCommonCameraFacing:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

.field private mCurrentSettingActivity:I

.field private mCurrentShootingMode:I

.field private mCurrentShootingSelect:I

.field private mDimArray:[Z

.field private mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mExecutorCommandListener:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;

.field private mInitBixbyApiThread:Ljava/lang/Thread;

.field private mIsLaunchedFromBixby:Z

.field private mIsSwitchedCameraForced:Z

.field private mIsWaitCommandResult:Z

.field private mIsWaitEmptyRequest:Z

.field private mIsWaitTimerCaptureCompleted:Z

.field private mLastNlgErrorType:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

.field private mSettingLandingState:Ljava/lang/String;

.field private mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private mStateCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

.field private mStateHandler:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

.field private final ratioCommandId:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "settings"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->ratioCommandId:Ljava/util/Hashtable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mBixbyInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mStateHandler:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mExecutorCommandListener:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mInitBixbyApiThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsLaunchedFromBixby:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsSwitchedCameraForced:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitEmptyRequest:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitTimerCaptureCompleted:Z

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mDimArray:[Z

    const-string v1, "Setting"

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mSettingLandingState:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentSettingActivity:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingSelect:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mStateCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->initializeActionStateExecutorMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->initializeActionStateSubExecutorMap()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "settings",
            "shootingActionProvider"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLimitedCameraMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processState(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitEmptyRequest:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitTimerCaptureCompleted:Z

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitTimerCaptureCompleted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkFlashAvailable()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isAvailableChangeShootingMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLaunchSettingAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method private checkChangeAngleAvailable()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSeamlessZoomAvailable(I)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private checkChangeResolutionAvailable()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private checkChangeZoomAvailable()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v2, 0x21

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private checkCreateMyFilterAvailable()I
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_8

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 p0, 0x7

    return p0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eq v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isHdr10RecordingEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return v1

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_1
    return v1
.end method

.method private checkFlashAvailable()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v1, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 p0, 0xb

    return p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-eqz p0, :cond_3

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private checkMotionPhotoAvailable()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-eqz v0, :cond_2

    const/4 p0, 0x7

    return p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private checkSuperSteadyAvailable()I
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_SUPER_STEADY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    if-eq p0, v2, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private clearSettingLandingState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mSettingLandingState:Ljava/lang/String;

    const/16 v1, 0x190

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mSettingLandingState:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private executeAngle(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkChangeAngleAvailable()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    const/16 v0, 0xda

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportBackWideCamera()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToSendAlreadySetNlg(III)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->extendArea()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->FOV:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v4

    invoke-interface {v1, v3, v4, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xd8

    if-ne v0, p1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x64

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_2
    return-void
.end method

.method private executeCaptureMode(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportModeInCurrentState(Ljava/lang/String;Ljava/util/LinkedHashSet;)Z

    move-result v2

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    if-eq p1, v4, :cond_2

    const/16 v4, -0x7d0

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v6, 0x25

    if-ne v4, v6, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/16 v6, 0x22

    if-ne v4, v6, :cond_3

    move p1, v5

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :cond_3
    :goto_1
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingSelect:I

    const/16 v4, 0x64

    const/4 v6, 0x7

    if-ne p1, v0, :cond_8

    if-ne v2, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_4

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    return-void

    :cond_4
    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mSettingLandingState:Ljava/lang/String;

    const/16 v0, 0x190

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0xce

    if-ne v1, p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    invoke-direct {p0, p1, v1, v6}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_3

    :cond_8
    if-nez v2, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, v5, v1, v6}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->clearSettingLandingState()V

    return-void
.end method

.method private executeChangeSettingValue(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ActionStateExecutor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ActionStateExecutor;->update(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "non-executable state id : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraExecutorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private executeFlashAuto(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkFlashAvailable()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x8

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendFlashResult(III)V

    return-void
.end method

.method private executeFlashOff(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkFlashAvailable()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendFlashResult(III)V

    return-void
.end method

.method private executeFlashOn(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkFlashAvailable()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendFlashResult(III)V

    return-void
.end method

.method private executeLaunchSetting(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLaunchSettingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mSettingLandingState:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentSettingActivity:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mExecutorCommandListener:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;->onExecutorCommand(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    const/16 v0, 0x64

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeMotionPhoto(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkMotionPhotoAvailable()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xd1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/16 v1, 0xd2

    if-ne v1, p1, :cond_4

    if-ne v2, v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_0
    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    const/16 v0, 0x64

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeMultiRecordingType(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingType()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xdd

    if-ne p1, v4, :cond_0

    if-eq v0, v2, :cond_2

    :cond_0
    const/16 v4, 0xde

    if-ne p1, v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/16 v5, 0xdf

    if-ne p1, v5, :cond_5

    if-ne v0, v3, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsSwitchedCameraForced:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-direct {p0, v3, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_1
    return-void

    :cond_5
    if-ne p1, v4, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2

    :cond_6
    if-ne p1, v5, :cond_7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SINGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    :goto_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    invoke-direct {p0, v3, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeMyFilter(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkCreateMyFilterAvailable()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    :goto_0
    const/16 v2, 0xdb

    if-ne v2, p1, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->CREATE_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByFilterBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isBeautyFilterListMenuActive()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    :goto_1
    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeResolution(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkChangeResolutionAvailable()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    iget v1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    const/16 v3, -0x7d0

    if-ne v1, v3, :cond_1

    const/4 p1, 0x6

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_1
    const/16 v3, -0x3e8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    invoke-direct {p0, v2, v0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-eqz v3, :cond_3

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSensorCropResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    :cond_4
    invoke-direct {p0, v0, v5, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToSendAlreadySetNlg(III)Z

    move-result v7

    if-eqz v7, :cond_5

    return-void

    :cond_5
    const/16 v7, 0x64

    if-eqz v3, :cond_c

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isAvailableChangeSuperSteadyResolution(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v6

    if-nez v6, :cond_6

    return-void

    :cond_6
    iget v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v8, 0xc

    if-ne v6, v8, :cond_8

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v6

    if-ne v6, v4, :cond_7

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_7
    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_8
    const/16 v8, 0x24

    if-ne v6, v8, :cond_9

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v6

    if-ne v6, v4, :cond_a

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_a
    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    iget v8, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-ne v8, v4, :cond_b

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v8, v9}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v8

    if-ne v8, v4, :cond_b

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v6, v8, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v8, v6, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_2
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToChangeAspectRatio(II)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, v4, v0, v7}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_d

    move v2, v4

    :cond_d
    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getAspectRatioCommandId(IZZ)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    invoke-direct {p0, v4, v0, v7}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeReturnCamera(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mSettingLandingState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->returnToCamera()V

    return-void
.end method

.method private executeSetLocationTag(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToSendAlreadySetNlg(III)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const/16 v0, 0x64

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private executeShootingMode(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v2, v5}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_1

    const/16 p1, 0x8

    invoke-direct {p0, v3, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_1
    iget-object v3, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSlotValue:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportedModeForRequestedShootingMode(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-ne v2, v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsSwitchedCameraForced:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x64

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :goto_1
    invoke-direct {p0, v4, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_2
    return-void

    :cond_5
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getTitleCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->waitEmptyRequest()V

    return-void

    :cond_7
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->switchCameraByTypeMismatch(I)V

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportModeInCurrentState(Ljava/lang/String;Ljava/util/LinkedHashSet;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_3

    :cond_a
    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    :goto_3
    return-void
.end method

.method private executeShowMenu(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v2, 0xfa

    if-eq p1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "default: id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraExecutorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mSettingLandingState:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLaunchSettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_1
    return-void
.end method

.method private executeSingleTakeCaptureTime(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 p1, 0xa

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    const/16 v1, 0xe1

    const/4 v3, 0x6

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xe2

    const/4 v6, 0x5

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_2
    const/16 v1, -0x7d0

    if-ne p1, v1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    const/16 v1, -0x3e8

    if-ne p1, v1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_4
    if-lt v4, p1, :cond_a

    if-ge p1, v6, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-ne v1, p1, :cond_6

    const/4 p1, 0x2

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v5, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_3

    :cond_7
    if-eq p1, v3, :cond_9

    if-ne p1, v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-direct {p0, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    :goto_3
    return-void

    :cond_a
    :goto_4
    const/16 p1, 0x9

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeSuperSteady(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkSuperSteadyAvailable()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xcf

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/16 v1, 0xd0

    if-ne v1, p1, :cond_4

    if-ne v2, v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_0
    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    const/16 v0, 0x64

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeSwitchCamera(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    const/4 v0, 0x2

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SWITCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->waitEmptyRequest()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitEmptyRequest:Z

    const-string p1, "CameraExecutorManager"

    const-string v0, "fail change CameraFacing"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    :goto_1
    return-void
.end method

.method private executeTimer(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    const/4 v1, 0x2

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/16 v6, -0x7d0

    if-ne p1, v6, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    const/16 v6, -0x3e8

    if-ne p1, v6, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 p1, 0x8

    invoke-direct {p0, v3, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_2
    iget v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    :cond_3
    iget v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v6

    if-ne v6, p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v6, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v6

    if-ne v6, p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v6, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_3

    :cond_7
    if-eq v1, v4, :cond_9

    if-ne v1, v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-direct {p0, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    :goto_3
    return-void
.end method

.method private executeTimerOff(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToSendAlreadySetNlg(III)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-direct {p0, v3, p1, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToSendAlreadySetNlg(III)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-direct {p0, v3, p1, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private executeZoom(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, -0x7d0

    if-ne p1, v4, :cond_0

    move p1, v1

    goto/16 :goto_0

    :cond_0
    const/16 v4, -0x3e8

    if-ne p1, v4, :cond_1

    move p1, v3

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkChangeZoomAvailable()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2, v0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v6

    mul-int/lit8 p1, p1, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "max zoom level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", min zoom level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", request zoom level : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CameraExecutorManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v4, p1, :cond_8

    if-ge p1, v5, :cond_3

    goto :goto_3

    :cond_3
    if-ne v6, p1, :cond_4

    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->extendArea()V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v6

    invoke-interface {v4, v5, v6, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V

    const/16 p1, 0x64

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_2

    :cond_5
    if-eq p1, v1, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    :goto_2
    return-void

    :cond_8
    :goto_3
    const/16 p1, 0x9

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void
.end method

.method private executeZoomMinMax(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->checkChangeZoomAvailable()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_0
    const/16 v0, 0xd6

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToSendAlreadySetNlg(III)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->extendArea()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private getAspectRatioCommandId(IZZ)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolutionId",
            "isRecord",
            "isFront"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mRatioStringDepot:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not matching, invalid resolution id : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraExecutorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->ratioCommandId:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p2, :cond_4

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 p2, 0x24

    if-ne p0, p2, :cond_2

    const/4 p0, 0x3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    const/4 p0, 0x4

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Landroid/util/Pair;

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const/4 p0, 0x2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    check-cast p0, Landroid/util/Pair;

    :goto_3
    if-eqz p3, :cond_6

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_4
    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method private getBixbyParam(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$1;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v1, -0x3e8

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getParam()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const-string v6, ""

    if-le v4, v5, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dump parameter : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "["

    if-eqz v9, :cond_3

    move-object v9, v6

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "] "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v4, v6

    goto :goto_3

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "CameraExecutorManager"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p0, "slotValue is null"

    invoke-static {v8, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    iput-object v3, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSlotValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_8

    const/4 p1, 0x2

    if-eq v2, p1, :cond_7

    const/4 p1, 0x5

    if-eq v2, p1, :cond_6

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/16 p0, -0x7d0

    iput p0, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported param type : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getResolutionTypeParameter(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    goto :goto_4

    :cond_7
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getCameraFacingTypeParameter(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_9

    move v1, v5

    :cond_9
    invoke-static {v3, v7, v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getShootingModeNameFromSeparatedModeParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSlotValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v0

    :cond_a
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getShootingModeTypeParameter(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    :cond_b
    :goto_4
    return-object v0
.end method

.method private getCameraFacingTypeParameter(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slotValue"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported param type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraExecutorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x7d0

    :goto_0
    return p0
.end method

.method private getMaxResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v3, p1, :cond_4

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 p1, 0x24

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackSuperSteadyVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableFrontPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    :goto_1
    const/4 p1, 0x0

    array-length v0, p0

    move v1, v2

    :goto_2
    if-ge v2, v0, :cond_8

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-lt v4, v1, :cond_7

    if-ne v4, v1, :cond_6

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object p1, v3

    goto :goto_3

    :cond_6
    move-object p1, v3

    move v1, v4

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-object p1
.end method

.method private getNlgError(II)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "paramNlgId"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_2

    :pswitch_1
    const/16 p0, 0x12

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    goto :goto_2

    :pswitch_2
    const/16 p0, 0x10

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    goto :goto_2

    :pswitch_3
    const/16 p0, 0xc

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    goto :goto_2

    :pswitch_4
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    :goto_0
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    goto :goto_2

    :pswitch_5
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    const/16 p0, 0xf

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    const/16 p0, 0xd

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getResolutionTypeParameter(Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slotValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    invoke-static {v4, v0, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionParams(IZZ)Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    move-result-object v4

    if-eqz v4, :cond_c

    if-eqz p1, :cond_c

    const-string v5, "max"

    const/16 v6, -0x7d0

    if-eqz v3, :cond_9

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    const/16 v7, 0xc

    if-ne v3, v7, :cond_1

    const-string v3, "UHD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "FHD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v6

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    move p1, v6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getMaxResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p1

    goto :goto_2

    :cond_8
    invoke-virtual {v4, p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->getResolutionId(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getMaxResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p1

    goto :goto_2

    :cond_a
    invoke-virtual {v4, p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->getResolutionId(Ljava/lang/String;)I

    move-result p1

    :goto_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSuperResolutionSupported(I)Z

    move-result p0

    if-nez p0, :cond_d

    :cond_b
    return v6

    :cond_c
    const/16 p1, -0x3e8

    :cond_d
    return p1
.end method

.method private getSettingKey(I)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSettingKeysOfStateID(I)[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p1

    if-eqz p1, :cond_9

    array-length v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    aget-object p0, p1, v4

    goto :goto_1

    :cond_0
    aget-object p0, p1, v3

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_2

    aget-object p0, p1, v4

    goto :goto_1

    :cond_2
    aget-object p0, p1, v3

    goto :goto_1

    :cond_3
    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_8

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    add-int/2addr v2, v4

    aget-object p0, p1, v2

    goto :goto_1

    :cond_5
    add-int/2addr v2, v3

    aget-object p0, p1, v2

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_7

    add-int/2addr v2, v4

    aget-object p0, p1, v2

    goto :goto_1

    :cond_7
    add-int/2addr v2, v3

    aget-object p0, p1, v2

    goto :goto_1

    :cond_8
    aget-object p0, p1, v4

    goto :goto_1

    :cond_9
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getShootingModeTypeParameter(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slotValue"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getShootingModeNameFromModeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeCommandIdByModeName(Ljava/lang/String;Z)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CameraExecutorManager"

    const-string v1, "getSupportedModeSetInCurrentState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/16 v2, 0xc8

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v2, p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug stateId : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private handleExecutorCommand(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mExecutorCommandListener:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;->onExecutorCommand(I)V

    :cond_0
    return-void
.end method

.method private initializeActionStateExecutorMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$Zf8OUjbBOGCqpMlVqQkJ1kEbWfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$Zf8OUjbBOGCqpMlVqQkJ1kEbWfo;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$2pu5fgwMDbhberw3huT9UEpF6zs;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$2pu5fgwMDbhberw3huT9UEpF6zs;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$t5m1tYKK2JEr0ra3rw2j1o26td4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$t5m1tYKK2JEr0ra3rw2j1o26td4;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$waW7DkS_2PQ_WWF64RLoWquHbiY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$waW7DkS_2PQ_WWF64RLoWquHbiY;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$TLrgvR-lgmMsBS4uMjHWfuvYN1c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$TLrgvR-lgmMsBS4uMjHWfuvYN1c;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$2Cpw2RCAPoHH3PFjlw6KEgtSr6U;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$2Cpw2RCAPoHH3PFjlw6KEgtSr6U;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$2x5-M2-aenRgCb-x7cM6mCmir9s;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$2x5-M2-aenRgCb-x7cM6mCmir9s;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$xny5PDShoL3--fHzUtV4eypxH7g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$xny5PDShoL3--fHzUtV4eypxH7g;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$al4sRnm_oxU2bG_22E4n567nUKg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$al4sRnm_oxU2bG_22E4n567nUKg;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$al4sRnm_oxU2bG_22E4n567nUKg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$al4sRnm_oxU2bG_22E4n567nUKg;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$QfM3nBAg-6zR06xwmyoJb9pRS5g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$QfM3nBAg-6zR06xwmyoJb9pRS5g;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$JNW0A3zf78sjtmmzZMmB-Hd9N8g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$JNW0A3zf78sjtmmzZMmB-Hd9N8g;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initializeActionStateSubExecutorMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$AUVZrEh6yxq7edR8ge5MWmCHzXc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$AUVZrEh6yxq7edR8ge5MWmCHzXc;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0x12c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$S8PiJtkRZrFvoVLJjSlW3WfQWIE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$S8PiJtkRZrFvoVLJjSlW3WfQWIE;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xd5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$6GEIuBN_YOcafcNIR0EZRRo1vJ8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$6GEIuBN_YOcafcNIR0EZRRo1vJ8;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xcb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$fm9DolUwSrLY7HJkkzwO98azgI8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$fm9DolUwSrLY7HJkkzwO98azgI8;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xcc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$39yZb2ADQQe-x1wexvkSiOzfmBw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$39yZb2ADQQe-x1wexvkSiOzfmBw;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xcd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$LGCt192JeA_3USB8U3_Avps-Jr0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$LGCt192JeA_3USB8U3_Avps-Jr0;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0x12d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$A2YecKPbYCBtSvwg9YJLYhG5feQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$A2YecKPbYCBtSvwg9YJLYhG5feQ;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xd6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$A2YecKPbYCBtSvwg9YJLYhG5feQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$A2YecKPbYCBtSvwg9YJLYhG5feQ;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xd7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$C8-vCf7Zj4dj0FPWJS9CuhaJxU8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$C8-vCf7Zj4dj0FPWJS9CuhaJxU8;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xd3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$C8-vCf7Zj4dj0FPWJS9CuhaJxU8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$C8-vCf7Zj4dj0FPWJS9CuhaJxU8;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xd4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$0b_3eEIlDW3AZ3vYf9PNqqh8S4g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$0b_3eEIlDW3AZ3vYf9PNqqh8S4g;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xfb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$ez3HsNoNjJ1Dy-GRUAo3ZnXHMsQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$ez3HsNoNjJ1Dy-GRUAo3ZnXHMsQ;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xdd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$ez3HsNoNjJ1Dy-GRUAo3ZnXHMsQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$ez3HsNoNjJ1Dy-GRUAo3ZnXHMsQ;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xde

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$ez3HsNoNjJ1Dy-GRUAo3ZnXHMsQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$ez3HsNoNjJ1Dy-GRUAo3ZnXHMsQ;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xdf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$RrzbJ7acbERta5Ie4opQLT3f_GU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$RrzbJ7acbERta5Ie4opQLT3f_GU;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xe0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$RrzbJ7acbERta5Ie4opQLT3f_GU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$RrzbJ7acbERta5Ie4opQLT3f_GU;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 v2, 0xe1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateSubExecutorMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$RrzbJ7acbERta5Ie4opQLT3f_GU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$RrzbJ7acbERta5Ie4opQLT3f_GU;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    const/16 p0, 0xe2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private isAvailableChangeShootingMode()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isAvailableChangeSuperSteadyResolution(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateId",
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {v1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x8

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return v0

    :cond_0
    return v1
.end method

.method private isAvailableProcessState(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mStateId:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getType(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isStateReady()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-eq v0, v3, :cond_0

    const-wide/16 v0, 0xc8

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    return v4

    :cond_0
    const/4 v1, 0x5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_1

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isAnimationFinished()Z

    move-result p1

    if-nez p1, :cond_7

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    return v4

    :cond_2
    if-ne v1, p1, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    if-ne v3, p1, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const/16 v0, 0xdb

    if-eq v0, p1, :cond_5

    const/16 v0, 0xdc

    if-ne v0, p1, :cond_7

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/16 v0, 0xa

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return v4

    :cond_7
    :goto_0
    return v5
.end method

.method private isBeautyFilterListMenuActive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isLaunchSettingAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isLimitedCameraMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isNeedToChangeAspectRatio(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "new_resolutionId",
            "cur_resolutionId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new ratio : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", current ratio : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraExecutorManager"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isNeedToSendAlreadySetNlg(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateId",
            "curValue",
            "newValue"
        }
    .end annotation

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isStateReady()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportBackWideCamera()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    return p0
.end method

.method private isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeName"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v2, "Front"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return p0

    :cond_1
    const-string v2, "Rear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeCommandIdByModeName(Ljava/lang/String;Z)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result p1

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return p0

    :cond_3
    xor-int/2addr p0, v1

    return p0
.end method

.method private isSupportModeInCurrentState(Ljava/lang/String;Ljava/util/LinkedHashSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateName",
            "currentSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedModeForRequestedShootingMode(ILjava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateId",
            "stateIdName",
            "shootingModeId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isAvailableChangeShootingMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode()I

    move-result v0

    if-eq p3, v0, :cond_1

    const/16 p2, 0x8

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object p3

    if-nez p3, :cond_3

    const/4 p2, 0x3

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return v1

    :cond_3
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v2

    :cond_4
    const/4 p2, 0x6

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return v1
.end method

.method public static synthetic lambda$0b_3eEIlDW3AZ3vYf9PNqqh8S4g(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeSetLocationTag(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$2Cpw2RCAPoHH3PFjlw6KEgtSr6U(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeSuperSteady(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$2pu5fgwMDbhberw3huT9UEpF6zs(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeShootingMode(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$2x5-M2-aenRgCb-x7cM6mCmir9s(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeMotionPhoto(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$39yZb2ADQQe-x1wexvkSiOzfmBw(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeFlashAuto(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$6GEIuBN_YOcafcNIR0EZRRo1vJ8(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeFlashOff(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$A2YecKPbYCBtSvwg9YJLYhG5feQ(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeZoomMinMax(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$AUVZrEh6yxq7edR8ge5MWmCHzXc(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeTimer(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$C8-vCf7Zj4dj0FPWJS9CuhaJxU8(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeResolution(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$JNW0A3zf78sjtmmzZMmB-Hd9N8g(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeShowMenu(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$LGCt192JeA_3USB8U3_Avps-Jr0(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeTimerOff(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$QfM3nBAg-6zR06xwmyoJb9pRS5g(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeChangeSettingValue(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$RrzbJ7acbERta5Ie4opQLT3f_GU(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeSingleTakeCaptureTime(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$S8PiJtkRZrFvoVLJjSlW3WfQWIE(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeZoom(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$TLrgvR-lgmMsBS4uMjHWfuvYN1c(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeReturnCamera(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$Zf8OUjbBOGCqpMlVqQkJ1kEbWfo(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeSwitchCamera(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$al4sRnm_oxU2bG_22E4n567nUKg(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeMyFilter(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$ez3HsNoNjJ1Dy-GRUAo3ZnXHMsQ(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeMultiRecordingType(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$fm9DolUwSrLY7HJkkzwO98azgI8(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeFlashOn(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$t5m1tYKK2JEr0ra3rw2j1o26td4(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeLaunchSetting(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$waW7DkS_2PQ_WWF64RLoWquHbiY(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeCaptureMode(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method public static synthetic lambda$xny5PDShoL3--fHzUtV4eypxH7g(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->executeAngle(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    return-void
.end method

.method private processState(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "CameraExecutorManager"

    if-nez p1, :cond_0

    const-string p0, "processState, state is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const-string p1, "can\'t process unknown state id"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x2

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string p1, "can\'t process on capturing or recording"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getBixbyParam(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;

    move-result-object p1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processState, stateName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", settingId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSettingValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subSettingId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mSubSettingValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", commandId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isAvailableProcessState(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    iput v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getSettingKey(I)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mDimArray:[Z

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_9

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v5, 0x8

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v4, v6, :cond_6

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mDimArray:[Z

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v3

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    invoke-direct {p0, p1, v1, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_7
    const-string v3, "torch flash supported"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-eq v3, v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    invoke-direct {p0, p1, v1, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    return-void

    :cond_9
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getType(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mActionStateExecutorMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ActionStateExecutor;

    if-eqz v1, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ActionStateExecutor;->update(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$BixbyCmdParams;)V

    goto :goto_1

    :cond_a
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :goto_1
    return-void
.end method

.method private processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateByBuildCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private processStateByFilterBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateByFilterBuildCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object p0

    const/16 v0, 0x2711

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildFilterCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private requestNLG(II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateId",
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNLG, stateId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraExecutorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->getType(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "CurrentMode"

    const/16 v2, 0x64

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_6

    if-eq v0, v3, :cond_4

    const/4 p1, 0x6

    const/4 v7, 0x7

    if-eq v0, p1, :cond_1

    if-ne p2, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SettingValue"

    :goto_0
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getNlgError(II)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p1

    goto :goto_3

    :cond_1
    if-ne p2, v7, :cond_3

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingSelect:I

    if-ne p1, v6, :cond_2

    const-string p1, "ShootingVideo"

    goto :goto_1

    :cond_2
    const-string p1, "ShootingPicture"

    :goto_1
    move-object v1, p1

    invoke-direct {p0, p2, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getNlgError(II)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v4

    move-object v1, p1

    goto :goto_3

    :cond_4
    const/16 v0, 0x65

    if-ne p1, v0, :cond_5

    move p1, v2

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getNlgError(II)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p1

    goto :goto_3

    :cond_6
    if-ne p2, v6, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0xa

    goto :goto_2

    :cond_7
    const-string v1, "Mode"

    move p1, v5

    :goto_2
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getNlgError(II)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    move-result-object p1

    :goto_3
    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v5

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;->attrName:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;->attrValue:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "%s_%s_%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz p2, :cond_9

    if-ne p2, v2, :cond_a

    :cond_9
    move v5, v6

    :cond_a
    invoke-static {v5, v1, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->sendResponse(ZLjava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->clearSettingLandingState()V

    return-void
.end method

.method private returnToCamera()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->handleExecutorCommand(I)V

    return-void
.end method

.method private sendFlashResult(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateId",
            "torchValue",
            "flashValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getTorch()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    move v3, p2

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    invoke-direct {p0, p1, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isNeedToSendAlreadySetNlg(III)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_3

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    :goto_3
    const/16 p2, 0x64

    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_6

    :cond_4
    if-eqz v0, :cond_5

    move p1, p2

    goto :goto_4

    :cond_5
    move p1, p3

    :goto_4
    if-eq v1, p1, :cond_7

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    :goto_5
    const/4 p1, 0x2

    const-wide/16 p2, 0x3e8

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    goto :goto_6

    :cond_7
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :cond_8
    :goto_6
    return-void
.end method

.method private sendHandlerMessageForBixby(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "delayMillis"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private declared-synchronized sendResult(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manager.sendResult, success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mBixbyInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    const-wide/16 v2, 0xc8

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v1

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getFirstActionState()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result p1

    const/16 v0, 0x190

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->completeState()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    invoke-virtual {p1, v4, v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->completeState()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getType(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    invoke-virtual {p1, v4, v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsSwitchedCameraForced:Z

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->clear()V

    const-string p1, "CameraExecutorManager"

    const-string v0, "Complete bixby action"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendResult(ZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "stateId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResult, success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraExecutorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastNlgErrorType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    const/4 v2, 0x4

    const-string v3, "current Request state : "

    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getParam()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getType(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p2, v0, :cond_1

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    invoke-direct {p0, v3, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-static {p2, p1, v5}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getShootingModeNameFromSeparatedModeParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsSwitchedCameraForced:Z

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    invoke-direct {p0, v3, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getStateIDbyName(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v0

    if-ne p2, v0, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_1

    :cond_5
    const-string p0, "ignore senResult"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result p2

    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private sendResultWithNLG(ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "stateId",
            "nlgId"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->requestNLG(II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isLastState()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const/16 p1, 0x64

    if-ne p3, p1, :cond_1

    :cond_0
    new-instance p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    const/16 p2, 0x190

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;-><init>(ILjava/util/List;)V

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCommonCameraFacing:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processState(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)V

    :cond_1
    return-void
.end method

.method private switchCameraByTypeMismatch(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SWITCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->processStateByBuildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    const-string v1, "CameraExecutorManager"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->waitEmptyRequest()V

    const-string p0, "success, switch camera command"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "fail, switch camera command"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isRequestQueueEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    const/4 p1, 0x3

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendHandlerMessageForBixby(IJ)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResultWithNLG(ZII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deInitialize()V
    .locals 4

    const-string v0, "CameraExecutorManager"

    const-string v1, "deInitialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->removeMessages(I)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mInitBixbyApiThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->isChangeActivityState(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->clear()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->setPopupWindowEnable(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->setPopupWindowEnable(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->setCurrentActivity(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mStateHandler:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->updateStateChange(Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mBixbyInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mExecutorCommandListener:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method public initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "engine"
        }
    .end annotation

    const-string v0, "CameraExecutorManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz v0, :cond_0

    const-string v0, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.AUDIOFOCUS_GAIN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.PICTURE_SAVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v0, "camera.action.EXECUTE_BIXBY"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->setPopupWindowEnable(Z)V

    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$5FbeX-0B3Cd34WLQdM08KDD29Yk;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/executor/-$$Lambda$CameraExecutorManagerImpl$5FbeX-0B3Cd34WLQdM08KDD29Yk;-><init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mInitBixbyApiThread:Ljava/lang/Thread;

    const-string p2, "mInitBixbyApiThread"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isLastState()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->isLastState()Z

    move-result p0

    return p0
.end method

.method public isRuleRunning()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getFirstActionState()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$initialize$0$CameraExecutorManagerImpl()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mBixbyInstance:Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getStateHandler()Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mStateHandler:Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mStateCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->updateStateChange(Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->setCurrentActivity(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->setCurrentActivity(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getFirstActionState()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p0, "CameraExecutorManager"

    const-string v0, "getFirstActionState is null"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "isDim"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aput-boolean p2, p0, p1

    return-void
.end method

.method public onEmpty()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitEmptyRequest:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const-string v1, "CameraExecutorManager"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onEmpty, shooting mode is not activated"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isRequestQueueEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onEmpty, request queue is not empty"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "onEmpty, success"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitEmptyRequest:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult()V

    :cond_2
    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShootingModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CameraExecutorManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentShootingMode:I

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitCommandResult:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShootingModeChanged  mLastNlgErrorType : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mLastNlgErrorType:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getParam()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getType(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportModeInCurrentState(Ljava/lang/String;Ljava/util/LinkedHashSet;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x7

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentRequestState:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;->getId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->isSupportModeInCurrentState(Ljava/lang/String;Ljava/util/LinkedHashSet;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mMainHandler:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public sendResult()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsLaunchedFromBixby:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsLaunchedFromBixby:Z

    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCurrentSettingActivity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentSettingActivity"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mCurrentSettingActivity:I

    return-void
.end method

.method public setExecutorCommandListener(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mExecutorCommandListener:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;

    return-void
.end method

.method public setLaunchedFromBixby(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLaunchedFromBixby"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsLaunchedFromBixby:Z

    return-void
.end method

.method public waitEmptyRequest()V
    .locals 2

    const-string v0, "CameraExecutorManager"

    const-string v1, "waitEmptyRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->mIsWaitEmptyRequest:Z

    return-void
.end method
