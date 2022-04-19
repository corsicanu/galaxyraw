.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$xBQXyO8gEUQyTJrvNRZHY1TdvlQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$xBQXyO8gEUQyTJrvNRZHY1TdvlQ;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$xBQXyO8gEUQyTJrvNRZHY1TdvlQ;->f$1:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$xBQXyO8gEUQyTJrvNRZHY1TdvlQ;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$xBQXyO8gEUQyTJrvNRZHY1TdvlQ;->f$1:F

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->lambda$onSwipeMove$8$CenterButtonView(FLandroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method
