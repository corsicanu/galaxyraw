.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$PDHcYxtJaFWeuI4Yx_UkLc_sTQQ;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$PDHcYxtJaFWeuI4Yx_UkLc_sTQQ;->f$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$PDHcYxtJaFWeuI4Yx_UkLc_sTQQ;->f$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->lambda$stop$1$EffectController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method
