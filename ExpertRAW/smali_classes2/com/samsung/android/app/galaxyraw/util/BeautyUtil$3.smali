.class Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$3;
.super Ljava/util/HashMap;
.source "BeautyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
