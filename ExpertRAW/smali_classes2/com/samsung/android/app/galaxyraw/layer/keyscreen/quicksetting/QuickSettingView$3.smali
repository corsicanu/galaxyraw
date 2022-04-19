.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "QuickSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;Landroid/content/Context;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "orientation",
            "reverseLayout"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0702a4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    mul-float/2addr v0, p0

    add-float/2addr p1, v0

    float-to-int p0, p1

    return p0
.end method
