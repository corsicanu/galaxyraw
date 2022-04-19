.class Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$MainHandler;,
        Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$ValueSetter;
    }
.end annotation


# static fields
.field private static final EXPOSURE_VALUE_RESET_MSG:I = 0x2

.field private static final EXPOSURE_VALUE_RESET_TIME:J = 0xbb8L

.field private static final MULTI_DATA_ARRAY_CELL_LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AeAfManagerImpl"

.field private static final TOUCH_AE_AF_RESET_MSG:I = 0x1

.field private static final TOUCH_AE_AF_RESET_TIME:J = 0xbb8L

.field private static final WAIT_AE_AF_TRIGGER_STATE_CHANGED_TIME:J = 0x1388L


# instance fields
.field private final mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

.field private final mAeAfUiStateChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;

.field private mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

.field private mAeState:I

.field private final mAfInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;

.field private mAfInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;

.field private mAfMode:I

.field private mAfState:I

.field private mAfTrigger:I

.field private mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

.field private mAutoFocusEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mDofMultiInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCancelAfRequired:Z

.field private mIsPrecaptureStarted:Z

.field private mIsSingleAfRequested:Z

.field private mIsTorchFlashEnabled:Z

.field private mIsTouchAeAfResetMsgExpired:Z

.field private mIsTouchAeStateDone:Z

.field private mMultiAfChangeListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;

.field private final mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

.field private final mObjectTrackingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;

.field private final mPreviewEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;

.field private final mSettingChangedListenerKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

.field private mTouchAeState:I

.field private final mTouchAeStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;

.field private mTrackingAfChangeListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;

.field private mUiState:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

.field private final mValueSetterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$ValueSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$MainHandler;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfUiStateChangeListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mUiState:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeState:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfMode:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfState:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTrigger:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTouchAeState:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeStateDone:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$uDnxqYfFtras_GPccxG2oTKnM4E;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$uDnxqYfFtras_GPccxG2oTKnM4E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTouchAeStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mDofMultiInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mObjectTrackingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$6;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mPreviewEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->initializeValueSetterMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->initializeSettingChangedListenerKey()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfMode:I

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeState:I

    return p0
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAutoFocusEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isPossibleAeStateForCapture()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTouchAeState:I

    return p0
.end method

.method static synthetic access$1502(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTouchAeState:I

    return p1
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeStateDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/AeAfController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfState:I

    return p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mMultiAfChangeListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTrackingAfChangeListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTrigger:I

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTrigger:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isPossibleAfStateForCapture()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;

    return-object p0
.end method

.method private cancelAutoFocusForTakingPicture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    return-void
.end method

.method private handleBackFlashSettingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAeMode(IZ)V

    return-void
.end method

.method private handleBackTorchSettingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    return-void
.end method

.method private handleFrontFlashSettingChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isNightScreenFlashAvailable()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAeMode(IZ)V

    return-void
.end method

.method private handleFrontNightModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isNightScreenFlashAvailable()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAeMode(IZ)V

    return-void
.end method

.method private handleIsoSettingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAeExtraMode(II)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setSensorSensitivity(I)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const-string v1, "AeAfManagerImpl"

    if-nez v0, :cond_0

    const-string p0, "handleMessage - returned. Activity is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchEv()V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    if-nez p1, :cond_4

    const-string p1, "TOUCH_AE_AF_RESET_MSG is expired"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isResetTouchAeAfAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchEv()V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleQrScannerTorchSettingChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    return-void
.end method

.method private handleShutterSpeedSettingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAeExtraMode(II)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setSensorExposureTime(I)V

    return-void
.end method

.method private handleSuperVDISSettingChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTrackingAf()V

    :cond_0
    return-void
.end method

.method private handleTrackingAfSettingChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    :cond_0
    return-void
.end method

.method private initializeSettingChangedListenerKey()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_COLOR_TUNE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_SCANNER_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initializeValueSetterMap()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$3_a7ehL4WG_maku5YySgpc4WyHE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$OKVgNm1cQJmo35F7NZh9kGDLkLc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$OKVgNm1cQJmo35F7NZh9kGDLkLc;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$zCrkqyKckv9xNPg3LAde6KJsL5U;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$zCrkqyKckv9xNPg3LAde6KJsL5U;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$85XmRp8_PO2GYNnGS0zzm3Pmuy8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$85XmRp8_PO2GYNnGS0zzm3Pmuy8;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$85XmRp8_PO2GYNnGS0zzm3Pmuy8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$85XmRp8_PO2GYNnGS0zzm3Pmuy8;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$RJCDJ-23RRlPmFKrozAyR57QhIw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$RJCDJ-23RRlPmFKrozAyR57QhIw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$HmO4G0E0CMZYkYg8AvfBYEvkadw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$OFMYNfPdVwn449wJmnNOmU-Ezv4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$OFMYNfPdVwn449wJmnNOmU-Ezv4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$KNiudl_D2J5UtX3hx1BvmMwb4w4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$9z1BQoMwf3D9_O2VvnfTcCZWyW0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$P1UaXc6zD_HU-jbwFSYoapgalNA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$Lwm_qrXCSUS0ngDBdDJqjwqi66E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_COLOR_TUNE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$_E4z955b_gcSJQyzBtxk217WSMo;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$_E4z955b_gcSJQyzBtxk217WSMo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$pg0m26pH1inrdS_9gJVexHIlJdM;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$pg0m26pH1inrdS_9gJVexHIlJdM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$pg0m26pH1inrdS_9gJVexHIlJdM;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$pg0m26pH1inrdS_9gJVexHIlJdM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$wpBtVWaSG2fyvawxOt1g2zgV9wQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$wpBtVWaSG2fyvawxOt1g2zgV9wQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$tQFYR7gFszHQ8aWpVXfelsmh1G0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$tQFYR7gFszHQ8aWpVXfelsmh1G0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_SCANNER_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$nUdoqgcIGYAL73c3fqYcQOoxPLg;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$nUdoqgcIGYAL73c3fqYcQOoxPLg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isPossibleAeStateForCapture()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPossibleAfStateForCapture()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfMode:I

    if-eq v0, v1, :cond_2

    return v3

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    return v3

    :cond_3
    return v1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_IQ_CUSTOM_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    const/16 v0, 0x7d0

    if-ge p0, v0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :cond_6
    :goto_0
    return v1
.end method

.method private isPrecaptureRequired()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isFlashRequired(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isFlashRequired(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getScreenFlashController()Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isNightScreenFlashRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isResetTouchAeAfAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_DONE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getZoomController()Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->isTransientZooming()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_DONE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v3, :cond_6

    :cond_4
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTouchAeState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method private isSingleAfRequiredForTakingPicture(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrecaptureRequired"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSingleAfRequired(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static synthetic lambda$85XmRp8_PO2GYNnGS0zzm3Pmuy8(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleFrontNightModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$9z1BQoMwf3D9_O2VvnfTcCZWyW0(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleShutterSpeedSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$KNiudl_D2J5UtX3hx1BvmMwb4w4(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleIsoSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$OKVgNm1cQJmo35F7NZh9kGDLkLc(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleBackFlashSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$RJCDJ-23RRlPmFKrozAyR57QhIw(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleBackTorchSettingChanged(I)V

    return-void
.end method

.method static synthetic lambda$changeAeAfUiState$0(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;->onAeAfUiStateChanged(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method public static synthetic lambda$nUdoqgcIGYAL73c3fqYcQOoxPLg(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleQrScannerTorchSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$tQFYR7gFszHQ8aWpVXfelsmh1G0(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleSuperVDISSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$uDnxqYfFtras_GPccxG2oTKnM4E(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->notifyWaitAeAfTriggerStateChanged()V

    return-void
.end method

.method public static synthetic lambda$wpBtVWaSG2fyvawxOt1g2zgV9wQ(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleTrackingAfSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$zCrkqyKckv9xNPg3LAde6KJsL5U(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->handleFrontFlashSettingChanged(I)V

    return-void
.end method

.method private notifyWaitAeAfTriggerStateChanged()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "notifyWaitAeAfTriggerStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - WaitAeAfTriggerStateChangedRequest : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetTouchAf()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->notifyWaitAeAfTriggerStateChanged()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAf()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->stopTouchAeAfResetTimer()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method


# virtual methods
.method public changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mUiState:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAeAfUiState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mUiState:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mUiState:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1uJ5r99bGbkWPnkNCSECQ_0QzG0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1uJ5r99bGbkWPnkNCSECQ_0QzG0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAePrecaptureTriggerState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    return-void
.end method

.method changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAfTriggerState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$AeAfTriggerState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    :goto_0
    return-void
.end method

.method public enableFocusPeaking(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->enableFocusPeaking(Z)V

    return-void
.end method

.method public enableMultiAf(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->enableMultiAfMode(Z)V

    return-void
.end method

.method public getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mUiState:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    return-object p0
.end method

.method getAeInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;

    return-object p0
.end method

.method getAfInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;

    return-object p0
.end method

.method getDofMultiInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mDofMultiInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;

    return-object p0
.end method

.method getObjectTrackingInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mObjectTrackingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;

    return-object p0
.end method

.method getTouchAeStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTouchAeStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;

    return-object p0
.end method

.method isAutoFocusTriggerRequired()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfState:I

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method isCancelAfRequiredAfterTakingPicture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    return p0
.end method

.method isFlashRequired(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedFlashType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported flash setting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method isManualExposure()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method isTorchFlashEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    return p0
.end method

.method isTrackingAfStarted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_FOCUSING:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_NOT_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$changeAeAfUiState$1$AeAfManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfUiStateChangeListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$XufJVvVekkm2VgDg7qv17orgajM;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$XufJVvVekkm2VgDg7qv17orgajM;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setTrackingAf$2$AeAfManagerImpl()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAutoFocusEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;->onTrackingAfRequested()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$start$3$AeAfManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$stop$4$AeAfManagerImpl(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method lockAe()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lockAe()V

    return-void
.end method

.method lockAeAwb()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lockAeAwb()V

    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$ValueSetter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$ValueSetter;->set(I)V

    :cond_1
    :goto_0
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShootingModeChanged ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AeAfManagerImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTrackingAf()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :goto_0
    return-void
.end method

.method public registerAeAfUiStateChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfUiStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetAeAfAwb()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetAeAfAwb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->notifyWaitAeAfTriggerStateChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchEv()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAeAwb()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetAeAfLock()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetAeAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeStateDone:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAeAwb()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAfWithAe()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method resetAeAfTriggerForTakingPicture()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetAeAfTriggerForTakingPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchEv()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAfMode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isCancelAfRequiredAfterTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->cancelAutoFocusForTakingPicture()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAeAwb()V

    :cond_3
    return-void
.end method

.method public resetAeLock()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetAeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAe()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAe()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAwb()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_0
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetAfLock()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAf()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAwb()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    :goto_0
    return-void
.end method

.method public resetTouchAeAf()V
    .locals 3

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAeAf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeStateDone:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAfWithAe()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAf()V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeStateDone:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAe()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->stopTouchAeAfResetTimer()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method public resetTouchEv()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchEv"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setExposureValue(I)V

    :cond_1
    return-void
.end method

.method public resetTrackingAf()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTrackingAf()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method public setAeAfLock(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAfWithAe(Landroid/graphics/Point;Landroid/util/Size;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lockAeAwb()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetAeAfLock()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTouchEv()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAfWithAe(Landroid/graphics/Point;Landroid/util/Size;)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeStateDone:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lockAeAwb()V

    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method setAeAfTriggerForTakingPicture(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrecaptureAllowed"
        }
    .end annotation

    const-string v0, "AeAfManagerImpl"

    const-string v1, "setAeAfTriggerForTakingPicture "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isPrecaptureRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isSingleAfRequiredForTakingPicture(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->overrideFocusMode(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAfMode(I)V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public setAeLock(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPoint",
            "focusSize"
        }
    .end annotation

    const-string v0, "AeAfManagerImpl"

    const-string v1, "setAeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAeAwb()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lockAeAwb()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAeAwb()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_1
    :pswitch_3
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeStateDone:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lockAeAwb()V

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setAeModeByFlashSetting(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isNightScreenFlashAvailable()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setAeMode(IZ)V

    return-void
.end method

.method public setAfLock(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPoint",
            "focusSize"
        }
    .end annotation

    const-string v0, "AeAfManagerImpl"

    const-string v1, "setAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->resetTouchAe()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAutoFocusEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAutoFocusEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    return-void
.end method

.method setAutoFocusInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;

    return-void
.end method

.method public setMultiAfChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mMultiAfChangeListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$MultiAfChangeListener;

    return-void
.end method

.method setTorchFlashEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    return-void
.end method

.method setTorchFlashMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTorchFlashMode(I)V

    return-void
.end method

.method public setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method public setTouchAeAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAfWithAe(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method public setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method public setTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->setTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$Je_ufVqUjC1SQqtM9j-h_ZoGBb0;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$Je_ufVqUjC1SQqtM9j-h_ZoGBb0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTrackingAfChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeAfPresenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mTrackingAfChangeListener:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;

    return-void
.end method

.method start()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$e88LBAMdpb7sBJLWGoyThWZ-eTs;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$e88LBAMdpb7sBJLWGoyThWZ-eTs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mPreviewEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method public startEvResetTimer()V
    .locals 4

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startEvResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startTouchAeAfResetTimer()V
    .locals 4

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startTouchAeAfResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$d_E7puR-sI8Dn_bxgBNeL4nBpko;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$d_E7puR-sI8Dn_bxgBNeL4nBpko;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mPreviewEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->unregisterPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTrackingAf()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    return-void
.end method

.method public stopEvResetTimer()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startEvResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public stopTouchAeAfResetTimer()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "stopTouchAeAfResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method unlockAe()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAe()V

    return-void
.end method

.method unlockAeAwb()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAeAwb()V

    return-void
.end method

.method public unlockAwb()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfController:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->unlockAwb()V

    return-void
.end method

.method public unregisterAeAfUiStateChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeAfUiStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method waitAeAfTriggerStateChanged()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitAeAfTriggerStateChanged : current aeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAeState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " afState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isPossibleAfStateForCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
