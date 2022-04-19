.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;

.field public final synthetic f$1:Landroid/hardware/camera2/params/MeteringRectangle;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;->f$1:Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;->f$1:Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->lambda$onObjectTrackingInfoChanged$0$AeAfManagerImpl$5(Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    return-void
.end method
