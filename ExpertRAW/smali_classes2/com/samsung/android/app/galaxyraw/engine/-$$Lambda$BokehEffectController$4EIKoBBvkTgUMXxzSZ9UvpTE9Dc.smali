.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$4EIKoBBvkTgUMXxzSZ9UvpTE9Dc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$4EIKoBBvkTgUMXxzSZ9UvpTE9Dc;->f$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$4EIKoBBvkTgUMXxzSZ9UvpTE9Dc;->f$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    check-cast p2, Ljava/util/function/BiConsumer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->lambda$registerCameraSettingChangedListener$1$BokehEffectController(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V

    return-void
.end method
