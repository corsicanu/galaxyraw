.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$u0SsGLZK4_qCGdgSP-QvqoxQsmc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$u0SsGLZK4_qCGdgSP-QvqoxQsmc;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$u0SsGLZK4_qCGdgSP-QvqoxQsmc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$u0SsGLZK4_qCGdgSP-QvqoxQsmc;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$u0SsGLZK4_qCGdgSP-QvqoxQsmc;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->lambda$updateZoomText$7$ZoomView(I)V

    return-void
.end method
