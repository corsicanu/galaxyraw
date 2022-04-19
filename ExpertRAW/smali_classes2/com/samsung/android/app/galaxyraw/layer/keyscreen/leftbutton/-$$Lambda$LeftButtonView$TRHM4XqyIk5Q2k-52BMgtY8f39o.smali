.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;->f$1:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;->f$2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->lambda$startQuickViewThumbnailAnimation$6$LeftButtonView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
