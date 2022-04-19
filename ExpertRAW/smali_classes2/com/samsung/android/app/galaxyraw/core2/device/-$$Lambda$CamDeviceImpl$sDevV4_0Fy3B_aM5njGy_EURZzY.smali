.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$sDevV4_0Fy3B_aM5njGy_EURZzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$sDevV4_0Fy3B_aM5njGy_EURZzY;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$sDevV4_0Fy3B_aM5njGy_EURZzY;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$sDevV4_0Fy3B_aM5njGy_EURZzY;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$sDevV4_0Fy3B_aM5njGy_EURZzY;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->lambda$close$0$CamDeviceImpl(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method
