.class public Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;
.super Ljava/lang/Object;
.source "AeAfPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$MainHandler;
    }
.end annotation


# static fields
.field private static final AE_AF_LOCK_ALPHA_HIDE_TIME_OUT:I = 0x7d0

.field private static final AE_AF_LOCK_TRANSPARENT_MSG:I = 0x2

.field private static final FOCUS_GUIDE_TOAST_SHOW_DURATION:I = 0x1388

.field private static final MAX_FOCUS_GUIDE_SHOWING_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AeAfPresenter"

.field private static final TOUCH_AE_AF_HIDE_MSG:I = 0x1

.field private static final TOUCH_AE_AF_HIDE_TIME_OUT:I = 0xbb8


# instance fields
.field private final mAeAfComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;",
            ">;"
        }
    .end annotation
.end field

.field private mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

.field private final mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

.field private final mAeAfPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

.field private mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFocusGuideDistance:Z

.field private mIsFocusGuideShown:Z

.field private mIsTouchAvailable:Z

.field private mIsTrackingAfStarted:Z

.field private mIsZoomMenuShowing:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingChangedListenerKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$MainHandler;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfComponentList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTrackingAfStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideShown:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideDistance:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsZoomMenuShowing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTouchAvailable:Z

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mTrackingAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mTrackingAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->initializeSettingChangedListenerKey()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideShown:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideDistance:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsZoomMenuShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isTouchEvSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->getEvSliderBoundary()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private enableAeAfView(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideAeAfGroup(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->stopAeAfHideTimer()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isLockState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showAeAfGroup(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getEvSliderBoundary()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getTouchBoundary()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->getButtonAreaVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getTouchBoundary()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getTouchBoundary()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, v0, Landroid/graphics/Rect;->top:I

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private handleAeLockState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isTouchAeAfStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfAwb()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeLockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfLockState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideDivideAeLock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeLock()V

    :cond_2
    return-void
.end method

.method private handleAfLockState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isTouchAeAfStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfAwb()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAfLockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfLockState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideDivideAfLock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAfLock()V

    :cond_2
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const-string v1, "AeAfPresenter"

    if-nez v0, :cond_0

    const-string p0, "handleMessage - returned. Activity is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

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

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideAeAfGroup(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideAeAfGroup(Z)V

    :goto_0
    return-void
.end method

.method private handleZoomValueChanged()V
    .locals 2

    const-string v0, "AeAfPresenter"

    const-string v1, "handleZoomValueChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchAeAf()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->unlockAwb()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAfLock()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfAwb()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isOnlySupportEvSlider()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsZoomMenuShowing:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showEvSlider()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->startEvResetTimer()V

    :cond_4
    return-void
.end method

.method private handleZoomVisibility(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isZoomVisible"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->hideAll()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfComponentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->onZoomVisibilityChanged()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfLockState()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfDivided()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAeLock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAfLock()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAeAfAnimation()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAfLockState()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAfLock()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeLockState()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAeLock()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isOnlySupportEvSlider()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showEvSlider()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->startEvResetTimer()V

    :cond_5
    :goto_1
    return-void
.end method

.method private hideAll()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideAeAfGroup(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideDivideAeAfLock()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->resetObjectTrackingView()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->stopAeAfHideTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideFocusGuideView()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->hideFocusGuidePopup()V

    return-void
.end method

.method private hideFocusGuidePopup()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    return-void
.end method

.method private initializeSettingChangedListenerKey()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADAPTIVE_LENS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isFocusGuideAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_key_focus_guide_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->isFocusGuidVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideDistance:Z

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideShown:Z

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isFocusGuideSupported()Z

    move-result p0

    return p0
.end method

.method private isFocusGuideEnabled()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isNeedToShowTouchEvSliderTranslucently()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderTouchAfAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method private isOnlySupportEvSlider()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 p0, 0x9

    if-eq v0, p0, :cond_0

    const/16 p0, 0xa

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isTouchAeAfViewEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private isTouchEvSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result p0

    return p0
.end method

.method private isTouchEventHandled()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isTouchAfSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isTouchAeSupported()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTouchAvailable:Z

    return p0
.end method

.method private isTrackingAfUpdateAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$59a-XELiiJpQvFdZO38QbBKpuPM(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->hideFocusGuidePopup()V

    return-void
.end method

.method private resetExposureValue()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchEv()V

    return-void
.end method

.method private resetObjectTrackingView()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTrackingAfStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTrackingAfStarted:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideObjectTrackingView()V

    return-void
.end method

.method private setAeAfLock(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->stopAeAfHideTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->stopTouchAeAfResetTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideAeAfGroup(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideLock(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->setAeAfLock(Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method

.method private showFocusGuide()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_key_focus_guide_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->showFocusGuidePopup()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getLastTouchAeAfPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getLastTouchAeAfPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showFocusGuideView(II)V

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideShown:Z

    return-void
.end method

.method private showFocusGuidePopup()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120194

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$59a-XELiiJpQvFdZO38QbBKpuPM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$59a-XELiiJpQvFdZO38QbBKpuPM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAeAfHideTimer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isNeedToShowTouchEvSliderTranslucently()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private stopAeAfHideTimer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onDepthInfoChanged$0$AeAfPresenter(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_key_focus_guide_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x78

    if-lt p1, v0, :cond_3

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsFocusGuideDistance:Z

    return-void
.end method

.method public synthetic lambda$start$1$AeAfPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$stop$2$AeAfPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public onAeAfLockButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getLastTouchAeAfPoint()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->setAeAfLock(Landroid/graphics/Point;)V

    return-void
.end method

.method public onAeAfRefreshRequested(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportUiSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTouchAvailable:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideAeAfGroup(Z)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTouchAvailable:Z

    return-void
.end method

.method public onAeAfTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isScaleZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onAeAfUiStateChanged(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "0026"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideObjectTrackingView()V

    goto/16 :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTrackingAfStarted:Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAeLock()V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getAfAe(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAfLock()V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getAfAe(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getAfAe(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1204b2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->speakTtsAllAtOnce(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showAeAfGroup(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfDivided()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showDivideAeAfAnimation()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isFocusGuideAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->showFocusGuide()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isTouchAeAfViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showAeAfGroup(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->hideAll()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAeAfUnlockButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAeAfLockState()Z

    move-result v0

    const-string v1, "0028"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfDivided()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAfLock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideDivideAfLock()V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getAfAe(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfLock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchEv()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideDivideAeAfLock()V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getAfAe(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAeUnlockButtonClick()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeLock()V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getAfAe(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0028"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBoundaryChanged(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideAeAfGroup(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfComponentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->updateTouchBoundary(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 0
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

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->handleZoomValueChanged()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p3, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isLockState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->unlockAwb()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p3, p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->handleAfLockState()V

    goto :goto_0

    :pswitch_3
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->handleAeLockState()V

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->handleAeLockState()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isTouchAeAfStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->startTouchAeAfResetTimer()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDepthInfoChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerDepth"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$btKQxc3VBcTYl7EA5h6DCUevgIw;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$btKQxc3VBcTYl7EA5h6DCUevgIw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDivideAeAfTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->handleDivideAeAfTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    return-void
.end method

.method public onDivideAeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->handleDivideAeTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    return-void
.end method

.method public onEvSliderChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setExposureValue(I)V

    return-void
.end method

.method public onFlingHorizontal(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onFlingVertical(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->setVerticalDirection(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onFocusGuideAnimationEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsZoomMenuShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showAeAfGroup(IZ)V

    :cond_0
    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isTouchEventHandled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "AeAfPresenter"

    const-string v3, "ACTION_UP"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->resetExposureValue()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfComponentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result p0

    if-ne p0, v2, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public onLongPressEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTouchAvailable:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfComponentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->onLongPressed(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->resetExposureValue()V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 0
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

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->hideAll()V

    return-void
.end method

.method public onShowAeAfLocked()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->showAeAfGroup(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    goto :goto_0

    :cond_1
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getLastTouchAeAfPoint()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->setAeAfLock(Landroid/graphics/Point;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStartEvSliderTouch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->stopEvResetTimer()V

    :cond_0
    return-void
.end method

.method public onStopEvSliderTouch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->startEvResetTimer()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->startAeAfHideTimer()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0131"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTrackingAfChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afRect",
            "cropRegion"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isTrackingAfUpdateAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideObjectTrackingView()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsTrackingAfStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->updateObjectTrackingRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onVisibilityChanged(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "isVisible"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : isVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ViewVisibilityEventManager$ViewId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mIsZoomMenuShowing:Z

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->handleZoomVisibility(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->enableAeAfView(Z)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->registerAeAfUiStateChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setTrackingAfChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$YqO8T27vMIZ4dOilV58ZpIc_gUc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$YqO8T27vMIZ4dOilV58ZpIc_gUc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isFocusGuideEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->registerDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_BOKEH_EFFECT_LIST:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_LIVE_FOCUS_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->registerListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.INACTIVATE_SHOOTING_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->hideAll()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$WdvoSPHnKvw3i3oqcjL1uhRp5Sc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfPresenter$WdvoSPHnKvw3i3oqcjL1uhRp5Sc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_BOKEH_EFFECT_LIST:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_LIVE_FOCUS_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->unregisterListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->unregisterAeAfUiStateChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiStateChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setTrackingAfChangeListener(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mDivideAeAfTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mAeAfLockTouchManager:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->isFocusGuideEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->unregisterDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
