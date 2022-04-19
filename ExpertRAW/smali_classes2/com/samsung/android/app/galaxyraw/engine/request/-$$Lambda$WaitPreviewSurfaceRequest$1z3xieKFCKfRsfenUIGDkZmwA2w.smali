.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$WaitPreviewSurfaceRequest$1z3xieKFCKfRsfenUIGDkZmwA2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/request/WaitPreviewSurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/WaitPreviewSurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$WaitPreviewSurfaceRequest$1z3xieKFCKfRsfenUIGDkZmwA2w;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/WaitPreviewSurfaceRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$WaitPreviewSurfaceRequest$1z3xieKFCKfRsfenUIGDkZmwA2w;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/WaitPreviewSurfaceRequest;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitPreviewSurfaceRequest;->lambda$onTimeout$0$WaitPreviewSurfaceRequest()V

    return-void
.end method
