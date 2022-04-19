.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$NueG3njv4V6--FgGJEcBIta2vmw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$NueG3njv4V6--FgGJEcBIta2vmw;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$NueG3njv4V6--FgGJEcBIta2vmw;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$NueG3njv4V6--FgGJEcBIta2vmw;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$NueG3njv4V6--FgGJEcBIta2vmw;->f$1:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->lambda$hideViewWithAlphaAnimation$10(Ljava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method
