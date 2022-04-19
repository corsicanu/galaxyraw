.class Lcom/samsung/android/app/galaxyraw/setting/NormalCameraSettings;
.super Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;
.source "NormalCameraSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalCameraSettings"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "observer"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V

    const-string p0, "NormalCameraSettings"

    const-string p1, "NormalCameraSettings created"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method isResizableMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isSimpleMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
