.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;
.super Ljava/lang/Object;
.source "KeyScreenLayerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerFlingEventListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScrollEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final BIT_SET_SIZE:I

.field private static final TAG:Ljava/lang/String; = "KeyScreenLayerPresenter"


# instance fields
.field private mBitMarker:I

.field private mBitMarkerForViewVisibility:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCurrentShootingMode:I

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mPresenterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

.field private final mViewVisibilityGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleViewIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->BIT_SET_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view",
            "shootingActionProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mViewVisibilityGroupMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->createView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setAttachMode(Z)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p3, "selfie_tone_camera"

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setSelfieToneMode(Z)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-interface {p2, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setSplitViewMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->createBitSet(I)Ljava/util/BitSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCurrentShootingMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    return-object p0
.end method

.method private changeDefaultShootingMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultShootingModeCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->hideBackButton()V

    return-void
.end method

.method private createBitSet(I)Ljava/util/BitSet;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    new-instance p0, Ljava/util/BitSet;

    sget v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->BIT_SET_SIZE:I

    invoke-direct {p0, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ljava/util/BitSet;->set(IIZ)V

    move v0, v2

    :goto_0
    sget v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->BIT_SET_SIZE:I

    if-ge v0, v3, :cond_1

    shl-int v3, v1, v0

    and-int v4, p1, v3

    if-ne v4, v3, :cond_0

    invoke-virtual {p0, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getBitMarkerForViewVisibility(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mViewVisibilityGroupMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->BIT_SET_SIZE:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    not-int v3, v3

    and-int/2addr v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private handleScrollEvent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCurrentShootingMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->translateShootingModeList(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideSubView()Z

    return-void
.end method

.method private needToCenterButtonShrink(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ViewVisibilityEventManager$ViewId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resetFlag()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->updateCenterButtonShrinkState(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCenterButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getIndicatorPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLeftButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getQuickSettingPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRightButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShootingModeListPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getZoomPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onBackKeyUp()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideSubView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from-retail"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCurrentShootingMode:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->changeDefaultShootingMode()V

    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCurrentShootingMode:I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-static {v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->changeDefaultShootingMode()V

    return v1

    :cond_4
    return v3
.end method

.method public onButtonR1KeyUp()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

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

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->onUpdateRemainCounterRequested()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCenterButtonEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->setFloatingShutterButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onFlingDown()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->setVerticalDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideSubView()Z

    return-void
.end method

.method public onFlingLeft()V
    .locals 0

    return-void
.end method

.method public onFlingRight()V
    .locals 0

    return-void
.end method

.method public onFlingUp()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->setVerticalDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideSubView()Z

    return-void
.end method

.method public onHideViewRequested(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHideViewRequested mBitMarker "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mBitMarkerForViewVisibility "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyScreenLayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    and-int/2addr p0, v0

    not-int p0, p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->performHideView(I)V

    return-void
.end method

.method public onLeftScroll()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->handleScrollEvent(I)V

    return-void
.end method

.method public onRightScroll()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->handleScrollEvent(I)V

    return-void
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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCurrentShootingMode:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->resetDisableView()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    const/16 p2, 0x20

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->disableView(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->disableView(I)V

    return-void
.end method

.method public onShowViewRequested(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShowViewRequested mBitMarker "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mBitMarkerForViewVisibility "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyScreenLayerPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    and-int/2addr p0, v0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->performShowView(I)V

    return-void
.end method

.method public onUpdateRemainCounterRequested()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getRemainCount(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setRemainCountIndicator(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdateRemainCounterRequested("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyScreenLayerPresenter"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->getBitMarkerForViewVisibility(Ljava/util/Set;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    and-int/2addr p2, v1

    not-int p2, p2

    invoke-interface {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->performHideView(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->getBitMarkerForViewVisibility(Ljava/util/Set;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarkerForViewVisibility:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBitMarker:I

    and-int/2addr p2, v1

    invoke-interface {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->performShowView(I)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->needToCenterButtonShrink(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;->SHRINK:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    :goto_1
    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->updateCenterButtonShrinkState(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged viewId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " VisibleViewIdSet "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mVisibleViewIdSet:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyScreenLayerPresenter"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode(Z)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideShootingModeList()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "camera.action.ACTIVATE_SHOOTING_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mViewVisibilityGroupMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->registerListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mViewVisibilityGroupMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->unregisterListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->resetFlag()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mPresenterArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
