.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JHZcsxpAZ1WUFr3ZXgEOR36dWbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JHZcsxpAZ1WUFr3ZXgEOR36dWbY;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JHZcsxpAZ1WUFr3ZXgEOR36dWbY;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JHZcsxpAZ1WUFr3ZXgEOR36dWbY;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JHZcsxpAZ1WUFr3ZXgEOR36dWbY;->f$1:Ljava/lang/Integer;

    check-cast p1, Landroid/view/Surface;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->lambda$checkAvailableDeviceConfiguration$2(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Landroid/view/Surface;)V

    return-void
.end method
