.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;
.super Ljava/lang/Object;
.source "CamDeviceCaptureRequestGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureRequestTarget"
.end annotation


# instance fields
.field private final mBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

.field private final mRequestCount:I

.field private final mTarget:Landroid/view/Surface;

.field private final mUsage:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "device",
            "builderMap",
            "usage",
            "target",
            "requestCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;I",
            "Landroid/view/Surface;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mBuilderMap:Ljava/util/Map;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mUsage:I

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mTarget:Landroid/view/Surface;

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mRequestCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mRequestCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mUsage:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mBuilderMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->mTarget:Landroid/view/Surface;

    return-object p0
.end method
