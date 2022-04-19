.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;
.super Ljava/lang/Object;
.source "ZoomPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mCenterPosArray:Landroid/util/SparseIntArray;

.field private mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mSupportUiSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

.field private final mZoomBarCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;)V
    .locals 11
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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Landroid/util/Range;

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Landroid/util/Range;

    const/16 v7, 0x258

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v3, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v7, Landroid/util/Range;

    const/16 v8, 0x7d0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v7, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v5, Landroid/util/Range;

    const/16 v7, 0xfa0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v8, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v5, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v8, Landroid/util/Range;

    const/16 v9, 0xbb8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v8, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v8, Landroid/util/Range;

    const/16 v9, 0x1770

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v8, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v8, Landroid/util/Range;

    const/16 v9, 0x1f40

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v8, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x6

    aput-object v2, v1, v8

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v8, Landroid/util/Range;

    const/16 v9, 0x2710

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v8, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Landroid/util/Range;

    const/16 v8, 0x2ee0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v9, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Landroid/util/Range;

    const/16 v4, 0x4e20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v3, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Landroid/util/Range;

    const/16 v6, 0x7530

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v3, v8}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v8, Landroid/util/Range;

    invoke-direct {v8, v4, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v8, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v5, Landroid/util/Range;

    const v7, 0xc350

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Landroid/util/Range;

    const v4, 0x186a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xd

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$tRI90ms2hjUOtLJrxfwakAcK3-g;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$Vr_EyntBwXMIH__UYXNpUcf_ds8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$Vr_EyntBwXMIH__UYXNpUcf_ds8;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mZoomBarCountMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    new-instance p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;)V

    invoke-interface {p3, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setZoomConditionChecker(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Ljava/util/EnumSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogControlZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogZoomValue()V

    return-void
.end method

.method private getDefaultButtonValue(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;)Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomCategory"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ZoomManager$ZoomCategory:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p1, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-direct {p1, p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;-><init>(III)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-direct {p1, v0, p0, v0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;-><init>(III)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;-><init>(III)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-direct {p1, v0, v0, p0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;-><init>(III)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getSALogIdLensType(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->getWideZoomShortcutLevel()I

    move-result v0

    const-string v1, "2"

    if-lt p1, v0, :cond_2

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->getTeleZoomShortcutLevel()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->getSecondTeleZoomShortcutLevel()I

    move-result p0

    if-ge p1, p0, :cond_1

    const-string v1, "3"

    goto :goto_0

    :cond_1
    const-string v1, "4"

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getSALogIdZoomShortCut()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getZoomType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "0174"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isSliderShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "0114"

    return-object p0

    :cond_1
    const-string p0, "0113"

    return-object p0
.end method

.method private getSALogIdZoomValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getZoomType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p0

    const-string v0, "0171"

    if-eqz p0, :cond_0

    :cond_0
    return-object v0

    :cond_1
    const-string p0, "0111"

    return-object p0
.end method

.method private getSecondTeleZoomShortcutLevel()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method private getTeleZoomShortcutLevel()I
    .locals 1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d0

    :goto_0
    return p0
.end method

.method private getWideZoomShortcutLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    return p0
.end method

.method private increaseZoomValueByInterval()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->scrollSlider(I)V

    return-void
.end method

.method private isGestureEventAvailable(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isSPenZoomAvailable()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ZoomManager$ZoomCategory:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    const v0, 0x7f12036e

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomNotSupportedToast(I)V

    return v1

    :cond_1
    return v2
.end method

.method private isTouchEventAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private loadZoomShortcutData()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result v2

    if-lt v1, v2, :cond_0

    const-string p0, "ZoomPresenter"

    const-string v0, "loadZoomShortcutData fail because minimum zoom value and maximum zoom value is equal."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/16 v4, 0x1f4

    if-ne v1, v4, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v4, 0x258

    if-ne v1, v4, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/16 v4, 0xbb8

    if-ne v1, v4, :cond_3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v1, 0xfa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v1, 0x1770

    if-eq v2, v1, :cond_e

    const/16 v1, 0x1f40

    if-eq v2, v1, :cond_d

    const/16 v1, 0x2710

    if-eq v2, v1, :cond_c

    const/16 v1, 0x2ee0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v1, :cond_b

    const/16 v1, 0x4e20

    if-eq v2, v1, :cond_a

    const/16 v1, 0x7530

    const/4 v6, 0x3

    if-eq v2, v1, :cond_9

    const v1, 0xc350

    if-eq v2, v1, :cond_8

    const v1, 0x186a0

    if-eq v2, v1, :cond_7

    goto/16 :goto_1

    :cond_7
    new-array v1, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_8
    new-array v1, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X20:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_9
    new-array v1, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X20:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_a
    new-array v1, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X20:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_b
    new-array v1, v5, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_c
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setShortcutData(Ljava/util/List;)V

    return-void
.end method

.method private makeCommand(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonList",
            "commandIdArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/command/MenuCommand;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reduceZoomValueByInterval()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->scrollSlider(I)V

    return-void
.end method

.method private refreshLensButton(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonList",
            "defaultButtonValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->makeCommand(Ljava/util/List;Landroid/util/SparseArray;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->refreshLensButton(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Landroid/util/SparseArray;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->initializeLensButtonBackground(I)V

    return-void
.end method

.method private refreshShortcut()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->makeShortcutAdapter()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->initializeShortcutList()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->initializeShortcutBackground(I)V

    :cond_0
    return-void
.end method

.method private refreshSlider()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->setZoomBarCount()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->initializeSlider()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->enableTouchEvent()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setSliderPadding()V

    :cond_0
    return-void
.end method

.method private registerLayerScaleEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->setLayerScaleEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleEventListener;)V

    return-void
.end method

.method private registerLayerScaleUpDownEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->setLayerScaleEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleEventListener;)V

    return-void
.end method

.method private sendSALogControlZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getZoomType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getControlZoomInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0262"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getControlZoomInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0172"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getControlZoomInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0112"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendSALogFrontAngle(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "2013"

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getDetailByFrontAngleChangeInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "2012"

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getDetailByFrontAngleChangeInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendSALogLensType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v1, v0

    goto :goto_1

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_2
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_4
    const-string p1, "0019"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_2

    :pswitch_5
    const-string p1, "0018"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_2

    :pswitch_6
    const-string p1, "0017"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_2

    :pswitch_7
    const-string p1, "0016"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getStartToZoomInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0217"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendSALogZoomShortCut(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->getSALogIdZoomShortCut()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getDetailByZoomValue(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogControlZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    return-void
.end method

.method private sendSALogZoomValue()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->getSALogIdZoomValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    const/16 v2, 0x3e8

    invoke-static {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getDetailByZoomValue(III)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setZoomBarCount()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mZoomBarCountMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setZoomBarMap(Ljava/util/Map;)V

    return-void
.end method

.method private setZoomProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Landroid/util/Range;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "supportUiSet",
            "zoomPositionType",
            "buttonList",
            "zoomRange",
            "defaultButtonValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCenterPosArray:Landroid/util/SparseIntArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    return-void
.end method

.method public onAnimationValueChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->scrollSlider(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBottomGuideLineChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setLensButtonBackground(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setShortcutBackground(I)V

    return-void
.end method

.method public onCameraIdChanged(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->loadZoomShortcutData()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshShortcut()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshSlider()V

    return-void
.end method

.method public onFlingScrollEnd()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isSliderScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogZoomValue()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    :cond_1
    return-void
.end method

.method public onGestureEventRequested(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "inputType"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->isGestureEventAvailable(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    const p1, 0x7f12036e

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomNotSupportedToast(I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    const v2, 0x7f070207

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    if-ne p2, v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->isSPenZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isSliderShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogControlZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->extendNormalPositionArea()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->restartZoomAutoHideMessage()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->horizontalScrollSlider(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    const/16 p2, 0xa8

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->handleKeyDownEvent(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->handleKeyUpEvent(I)V

    :cond_5
    :goto_1
    return v3

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogFrontAngle(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->changeLensButton(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;I)Z

    move-result p0

    return p0

    :cond_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    if-ne p2, v0, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->isSPenZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isSliderShowing()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogControlZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->extendNormalPositionArea()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->restartZoomAutoHideMessage()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    neg-int p0, p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->horizontalScrollSlider(I)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    const/16 p2, 0xa9

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->handleKeyDownEvent(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->handleKeyUpEvent(I)V

    :cond_a
    :goto_3
    return v3

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogFrontAngle(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->changeLensButton(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;I)Z

    move-result p0

    return p0
.end method

.method public onLensButtonClick(ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonValue",
            "commandId"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->isTouchEventAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/galaxyraw/command/EmptyCommand;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_NAME_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result p2

    invoke-interface {v1, v2, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel(I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomText()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->restartZoomTextHideRunnable()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p2, v1, :cond_3

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomText()V

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public onLensButtonToSliderChangeRequested()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->hideLensButton()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomSlider(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomText()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->PRO:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_0
    return-void
.end method

.method public onLevelButtonClick(ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomLevel",
            "zoomPositionType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setTargetZoomRatio(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomShortcut()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne p2, p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_2
    return-void
.end method

.method public onReachZoomBar(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method public onRefreshBackgroundRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomPositionType",
            "top"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ZoomManager$ZoomPositionType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->enableBottomBackground(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->setBottomBackgroundPosition(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    const/16 p1, 0x96

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->setBottomBackgroundPosition(II)V

    :goto_0
    return-void
.end method

.method public onRefreshPropertyRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "supportUiSet",
            "zoomPositionType",
            "buttonList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    new-instance v5, Landroid/util/Range;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->getDefaultButtonValue(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;)Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    move-result-object v7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    const/4 v8, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-eq p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isExtend()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->resetChildView()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshProperty zoomCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportUiSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomPositionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttonList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultButtonValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->setZoomProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Landroid/util/Range;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateLensButtonBackground(IZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v0, v1, v8}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateShortcutBackground(IZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->resetLocalVariable()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setZoomProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->refreshChildViewVisibility()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->resetBaseLine()V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->registerLayerScaleEventListener()V

    return-void

    :cond_2
    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ZoomManager$ZoomCategory:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p4, v7}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshLensButton(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->registerLayerScaleUpDownEventListener()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->loadZoomShortcutData()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshShortcut()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshSlider()V

    invoke-direct {p0, p4, v7}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshLensButton(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->registerLayerScaleUpDownEventListener()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->loadZoomShortcutData()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshShortcut()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshSlider()V

    invoke-direct {p0, p4, v7}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->refreshLensButton(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->registerLayerScaleEventListener()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSALogControlZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogControlZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    return-void
.end method

.method public onSALogLensTypeRequested(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->getSALogIdLensType(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogLensType(Ljava/lang/String;)V

    return-void
.end method

.method public onSALogRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogFrontAngle(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogFrontAngle(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSALogShortCutRequested(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogZoomShortCut(I)V

    :cond_0
    return-void
.end method

.method public onSALogStartToZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogStartToZoom(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    return-void
.end method

.method public onScrollBackwardRequested()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->reduceZoomValueByInterval()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->speakZoomTts(I)V

    return-void
.end method

.method public onScrollChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrollX",
            "zoomLevel"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result p1

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result p1

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    :cond_1
    return-void
.end method

.method public onScrollEnd()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->stopTransientZooming()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isSliderScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogZoomValue()V

    :cond_0
    return-void
.end method

.method public onScrollForwardRequested()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->increaseZoomValueByInterval()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->speakZoomTts(I)V

    return-void
.end method

.method public onScrollStart()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->startTransientZooming()V

    return-void
.end method

.method public onShortcutShowRequested()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomShortcut()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    return-void
.end method

.method public onTouchEventRequested()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->isTouchEventAvailable()Z

    move-result p0

    return p0
.end method

.method public onZoomAreaExtendRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomPositionType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomSlider(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomShortcut()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomText()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->hideLensButton()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    return-void
.end method

.method public onZoomKeyDownRequested(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    const p1, 0x7f12036e

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomNotSupportedToast(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->startTransientZooming()V

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->reduceZoomValueByInterval()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->increaseZoomValueByInterval()V

    :goto_0
    return-void
.end method

.method public onZoomKeyUpRequested(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->stopTransientZooming()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomShortcut()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->sendSALogZoomValue()V

    return-void
.end method

.method public onZoomLevelAnimationCanceled()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setTargetZoomRatio(F)V

    return-void
.end method

.method public onZoomLevelChangeAnimationEnd()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->stopTransientZooming()V

    return-void
.end method

.method public onZoomLevelChangeAnimationStart()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->startTransientZooming()V

    return-void
.end method

.method public onZoomShortcutDataPrepared(Landroid/util/SparseIntArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerPosArray"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCenterPosArray:Landroid/util/SparseIntArray;

    return-void
.end method

.method public onZoomShortcutHide()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    return-void
.end method

.method public onZoomSliderHide(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentZoomCategory",
            "zoomPositionType"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ZoomManager$ZoomCategory:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setButtonSelectionStatus(I)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V

    return-void
.end method
