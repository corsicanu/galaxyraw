.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;
.super Ljava/util/HashMap;
.source "BeautyFilterSettingMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;
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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
