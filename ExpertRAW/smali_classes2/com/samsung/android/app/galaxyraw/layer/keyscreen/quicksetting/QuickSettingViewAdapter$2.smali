.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$2;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "QuickSettingViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->startAnimatedVectorDrawableAnimation(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

.field final synthetic val$data:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

.field final synthetic val$viewHolder:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewHolder",
            "val$data"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$2;->val$viewHolder:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$2;->val$data:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$2;->val$viewHolder:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$2;->val$data:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setViewItem(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V

    return-void
.end method
