.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$AwOrvx8faLpll-c3CUMPJ7Rpqrw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$AwOrvx8faLpll-c3CUMPJ7Rpqrw;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$AwOrvx8faLpll-c3CUMPJ7Rpqrw;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->lambda$prepareThirdPicCbConfig$15$PhotoMakerBase(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method
