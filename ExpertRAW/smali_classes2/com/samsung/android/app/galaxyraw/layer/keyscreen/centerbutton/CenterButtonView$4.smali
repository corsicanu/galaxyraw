.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$4;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "CenterButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->refreshButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$4;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

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

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$4;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$4;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getNormalOverlapResourceId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
