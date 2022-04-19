.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$alSye_cIm40LY5YrQhMRHTZaEms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$alSye_cIm40LY5YrQhMRHTZaEms;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$alSye_cIm40LY5YrQhMRHTZaEms;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->lambda$notifyNextCaptureAvailable$7$PictureCallbackManager()V

    return-void
.end method
