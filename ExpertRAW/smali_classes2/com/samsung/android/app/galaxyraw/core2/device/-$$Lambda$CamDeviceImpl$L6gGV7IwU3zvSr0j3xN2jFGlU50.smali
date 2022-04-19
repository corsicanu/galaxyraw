.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CameraDevice;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->lambda$L6gGV7IwU3zvSr0j3xN2jFGlU50(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method
