.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "ProHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->scrollTo(II)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;->onScrollEnd()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->access$502(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Z)Z

    return-void
.end method
