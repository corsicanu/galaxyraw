.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$8$SGYhZFaslpmVuLNVADZ4rthdKQE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$8$SGYhZFaslpmVuLNVADZ4rthdKQE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$8$SGYhZFaslpmVuLNVADZ4rthdKQE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->lambda$onReady$0$PhotoMakerBase$8(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V

    return-void
.end method
