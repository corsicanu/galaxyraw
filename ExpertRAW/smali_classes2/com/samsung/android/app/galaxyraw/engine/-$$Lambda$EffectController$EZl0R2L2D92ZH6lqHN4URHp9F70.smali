.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$EZl0R2L2D92ZH6lqHN4URHp9F70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$EZl0R2L2D92ZH6lqHN4URHp9F70;->f$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$EZl0R2L2D92ZH6lqHN4URHp9F70;->f$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->lambda$start$0$EffectController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method
