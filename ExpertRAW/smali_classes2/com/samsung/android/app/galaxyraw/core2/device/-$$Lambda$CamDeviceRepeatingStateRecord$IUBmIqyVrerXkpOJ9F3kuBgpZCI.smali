.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStateRecord$IUBmIqyVrerXkpOJ9F3kuBgpZCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStateRecord$IUBmIqyVrerXkpOJ9F3kuBgpZCI;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStateRecord$IUBmIqyVrerXkpOJ9F3kuBgpZCI;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStateRecord$IUBmIqyVrerXkpOJ9F3kuBgpZCI;->f$0:Ljava/util/Map;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStateRecord$IUBmIqyVrerXkpOJ9F3kuBgpZCI;->f$1:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateRecord;->lambda$setTrigger$0(Ljava/util/Map;Ljava/lang/Object;Landroid/hardware/camera2/CaptureRequest$Key;)V

    return-void
.end method
