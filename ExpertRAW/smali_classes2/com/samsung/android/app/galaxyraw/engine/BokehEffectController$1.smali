.class Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;
.super Ljava/util/HashMap;
.source "BokehEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
        "Ljava/util/function/BiConsumer<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Z9Sshw5GHFSU2ByTEAZyIp7fQXs;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Z9Sshw5GHFSU2ByTEAZyIp7fQXs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Wc9tEOcMJyU4VGtw9xEr68ZQKkA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Wc9tEOcMJyU4VGtw9xEr68ZQKkA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$L3lpdFr8v8RYSTmqBNsRmM-7RxY;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$L3lpdFr8v8RYSTmqBNsRmM-7RxY;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$akz5SGCI8h_btzzzovfVvucyADw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$akz5SGCI8h_btzzzovfVvucyADw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$WCo3dEs-4BKOwrs_L7iIWwkejzs;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$WCo3dEs-4BKOwrs_L7iIWwkejzs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$KeZ1qJtlHr5HjZhLhY2sNIXqcjQ;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$KeZ1qJtlHr5HjZhLhY2sNIXqcjQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$q2r1_p4lrwScdspT8fHwKmWaLTU;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$q2r1_p4lrwScdspT8fHwKmWaLTU;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$JixDxRUZD_zlV9zSsQG_yyt5N30;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$JixDxRUZD_zlV9zSsQG_yyt5N30;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$H4TddpOQYqjBisaqJHWa2gWG6Yc;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$H4TddpOQYqjBisaqJHWa2gWG6Yc;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$jwUhN8_rvDnQovoBz_WvbQTFdY0;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$jwUhN8_rvDnQovoBz_WvbQTFdY0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$JQ7f79J-A9VqVja-gpYDwsK1XUU;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$JQ7f79J-A9VqVja-gpYDwsK1XUU;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$-E8V6WzeDK1dHDsNRtoVYqgux8k;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$-E8V6WzeDK1dHDsNRtoVYqgux8k;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$GA7Xy5sIU6aKg-FUSY9PSmbYoko;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$GA7Xy5sIU6aKg-FUSY9PSmbYoko;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$fO5Ww9bn9cHELXpbS9p_WoYUrSs;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$fO5Ww9bn9cHELXpbS9p_WoYUrSs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$s_0Pijjt_PNY-70W9-EB3yVsWg4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$s_0Pijjt_PNY-70W9-EB3yVsWg4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$IvnhradTrWxUhIGvwmawpt8dJbg;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$IvnhradTrWxUhIGvwmawpt8dJbg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$TUgZsAsbfxSItpn-niRc7OL3Q9w;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$TUgZsAsbfxSItpn-niRc7OL3Q9w;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$-_MRob6uIY-J4PVr9zFrQiv9Clk;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$-_MRob6uIY-J4PVr9zFrQiv9Clk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$hiPhe_x81CCeTjB5DVJYtatw6vY;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$hiPhe_x81CCeTjB5DVJYtatw6vY;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$2MZLxLitxlVcqyU4NwGzzwaTylY;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$2MZLxLitxlVcqyU4NwGzzwaTylY;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$o5r8oCA4QmaAR0l_euNTEsEoIuk;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$o5r8oCA4QmaAR0l_euNTEsEoIuk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$riKfLKpn2c9y1vl7V9C1mPrHV4A;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$riKfLKpn2c9y1vl7V9C1mPrHV4A;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$w0tAEI8k-8II_65Kl8eaXEyIkDc;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$w0tAEI8k-8II_65Kl8eaXEyIkDc;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$N4iLbXUDJkErBwJRWH_K2bos_qA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$N4iLbXUDJkErBwJRWH_K2bos_qA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$yLlwroT25adGGoUY-M-aZEhD5vE;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$yLlwroT25adGGoUY-M-aZEhD5vE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$9hJ44kaiaHOgiX5ANzIje7-CQEQ;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$9hJ44kaiaHOgiX5ANzIje7-CQEQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$TTjO-f-HnrFOUR2av_1NpFGHyp4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$TTjO-f-HnrFOUR2av_1NpFGHyp4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$wDORyhf8QXGs5X94aL2AOymVb5g;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$wDORyhf8QXGs5X94aL2AOymVb5g;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$xkTUPI1rwCwO3k-3YlIirnlnEck;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$xkTUPI1rwCwO3k-3YlIirnlnEck;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$r9daQgJbbUDchjHnIsuYjMlJ4zg;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$r9daQgJbbUDchjHnIsuYjMlJ4zg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Bx337RYhB11KuiI4WzOPduZG12A;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Bx337RYhB11KuiI4WzOPduZG12A;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$OwMB66fWkUVC2Q8xW7JLp1JNm6E;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$OwMB66fWkUVC2Q8xW7JLp1JNm6E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$hGHE3ZjyPNUHM-TazBL0zUW0Iy4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$hGHE3ZjyPNUHM-TazBL0zUW0Iy4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Bp3xzBaLn5Yku3M56Q88xwDwfgc;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Bp3xzBaLn5Yku3M56Q88xwDwfgc;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Vq-9BX9aRTcDKxlOSxdgSRV5IbQ;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Vq-9BX9aRTcDKxlOSxdgSRV5IbQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$O1-eEw4smbwydl1YP_eEwzmt2as;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$O1-eEw4smbwydl1YP_eEwzmt2as;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$pOyJPYD5ikOppU28SVRnayqP0xg;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$pOyJPYD5ikOppU28SVRnayqP0xg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$p5Qt-eyX4ikNVvgSGzVnjXZgZIY;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$p5Qt-eyX4ikNVvgSGzVnjXZgZIY;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$_sUytCmsag_KmyU2b3IKZfu-TxQ;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$_sUytCmsag_KmyU2b3IKZfu-TxQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$BRL88TgJ44IBPUoUbdO-vNI9X6Q;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$BRL88TgJ44IBPUoUbdO-vNI9X6Q;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$tgp11oLZkOx7pTCjf6m9IM6XhRE;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$tgp11oLZkOx7pTCjf6m9IM6XhRE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$gCKJVnyj5csZPxWglMpso72TI3U;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$gCKJVnyj5csZPxWglMpso72TI3U;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$kdhUB6XkytXybFG3xynpVcqfLxE;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$kdhUB6XkytXybFG3xynpVcqfLxE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$yQ3w6j1EqmmkSiDdIottoIKHiUw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$yQ3w6j1EqmmkSiDdIottoIKHiUw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$2OfVzy3zoncMZnEuvtz7Yvozf1g;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$2OfVzy3zoncMZnEuvtz7Yvozf1g;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$2MnwunrgJislzafV7blaQvFqPW8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$2MnwunrgJislzafV7blaQvFqPW8;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$USOJYyxmODnEs2aaTJqyywmjTKg;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$USOJYyxmODnEs2aaTJqyywmjTKg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_ARTIFY_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$mkfFCa77Kg-RFXjriqfCVvDEZho;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$mkfFCa77Kg-RFXjriqfCVvDEZho;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$1Co2FyRyflgj5ewQz15yNwqJEz4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$1Co2FyRyflgj5ewQz15yNwqJEz4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$IoAEpUDB30P578DnV5d-LJHYO9M;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$IoAEpUDB30P578DnV5d-LJHYO9M;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$fYtzAO9Hk4QR-pvWjannx4ILb6k;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$fYtzAO9Hk4QR-pvWjannx4ILb6k;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$TJWxzRJKndmm-r0Q9AceDYWbAho;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$TJWxzRJKndmm-r0Q9AceDYWbAho;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_ARTIFY_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$cY3sveL4-cWH6zFRG1GCggeoU_o;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$cY3sveL4-cWH6zFRG1GCggeoU_o;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$R_N4dU1--Qd6efUgXu82Kzw4cVs;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$R_N4dU1--Qd6efUgXu82Kzw4cVs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Lo43Zr6upVYjiBixogbdlu7NGHc;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$Lo43Zr6upVYjiBixogbdlu7NGHc;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$LYwylzaLYvrWcAVtWE_NJqpR7Fw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$LYwylzaLYvrWcAVtWE_NJqpR7Fw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$RVsEygMbR1TT5wu3Ib09dnQPEJw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BokehEffectController$1$RVsEygMbR1TT5wu3Ib09dnQPEJw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$800(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$1$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$800(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$10$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$11$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$12$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$13$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$14$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$15$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$16$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$17$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$18$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$19$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$2$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$700(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    return-void
.end method

.method public synthetic lambda$new$20$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$21$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$22$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$23$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$24$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$25$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$26$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$27$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$28$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$29$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$3$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$700(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    return-void
.end method

.method public synthetic lambda$new$30$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$400(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    return-void
.end method

.method public synthetic lambda$new$31$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$32$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$33$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$300(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$34$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$35$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$300(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$36$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$37$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$300(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$38$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$39$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$300(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$4$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$40$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$41$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$300(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$42$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$43$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$44$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$200(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$45$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$100(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    return-void
.end method

.method public synthetic lambda$new$46$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$100(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;)V

    return-void
.end method

.method public synthetic lambda$new$47$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$48$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$49$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$5$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$50$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$51$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$52$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$53$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$54$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$55$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$56$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$6$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$7$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method

.method public synthetic lambda$new$8$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$500(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;II)V

    return-void
.end method

.method public synthetic lambda$new$9$BokehEffectController$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->access$600(Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;I)V

    return-void
.end method
