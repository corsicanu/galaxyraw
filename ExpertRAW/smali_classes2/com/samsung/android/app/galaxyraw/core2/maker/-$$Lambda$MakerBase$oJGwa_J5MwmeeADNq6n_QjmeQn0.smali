.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$oJGwa_J5MwmeeADNq6n_QjmeQn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$oJGwa_J5MwmeeADNq6n_QjmeQn0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$oJGwa_J5MwmeeADNq6n_QjmeQn0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->lambda$setCamDeviceSessionState$1$MakerBase(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V

    return-void
.end method