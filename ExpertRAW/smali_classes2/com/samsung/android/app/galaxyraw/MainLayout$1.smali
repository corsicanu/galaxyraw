.class Lcom/samsung/android/app/galaxyraw/MainLayout$1;
.super Ljava/lang/Object;
.source "MainLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/MainLayout;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/MainLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/MainLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPreDraw$0$MainLayout$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->access$000(Lcom/samsung/android/app/galaxyraw/MainLayout;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/MainLayout;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/MainLayout;->access$002(Lcom/samsung/android/app/galaxyraw/MainLayout;I)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/MainLayout;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$MainLayout$1$2Rrk8LNgfz3nxTF-84wi0EEZXLE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$MainLayout$1$2Rrk8LNgfz3nxTF-84wi0EEZXLE;-><init>(Lcom/samsung/android/app/galaxyraw/MainLayout$1;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->access$000(Lcom/samsung/android/app/galaxyraw/MainLayout;)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/MainLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return p0
.end method
