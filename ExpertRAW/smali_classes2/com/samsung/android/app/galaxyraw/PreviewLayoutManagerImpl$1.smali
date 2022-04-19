.class Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl$1;
.super Ljava/lang/Object;
.source "PreviewLayoutManagerImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->setPreviewLayout(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
