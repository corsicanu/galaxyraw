.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$NormalKeyScreenView$GuWK6EgpeWVdm6uGdLI9dRfBWbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$NormalKeyScreenView$GuWK6EgpeWVdm6uGdLI9dRfBWbM;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$NormalKeyScreenView$GuWK6EgpeWVdm6uGdLI9dRfBWbM;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->lambda$updateIndicatorOrientationPosition$1$NormalKeyScreenView(Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;)V

    return-void
.end method
