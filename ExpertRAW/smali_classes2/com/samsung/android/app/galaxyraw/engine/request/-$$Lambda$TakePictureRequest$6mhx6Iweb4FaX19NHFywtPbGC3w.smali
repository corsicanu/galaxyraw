.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$6mhx6Iweb4FaX19NHFywtPbGC3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$6mhx6Iweb4FaX19NHFywtPbGC3w;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$6mhx6Iweb4FaX19NHFywtPbGC3w;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->lambda$onTimeout$2$TakePictureRequest()V

    return-void
.end method
