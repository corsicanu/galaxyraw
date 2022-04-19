.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$1fm6sbKhp53mCIhjUH_8H-KW4v0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$1fm6sbKhp53mCIhjUH_8H-KW4v0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$1fm6sbKhp53mCIhjUH_8H-KW4v0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->lambda$new$2$ProRawPhotoMaker(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    return-void
.end method
