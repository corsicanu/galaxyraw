.class Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;
.super Ljava/util/HashMap;
.source "LiveFocusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_ARTIFY_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
