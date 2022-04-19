.class Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;
.super Ljava/lang/Object;
.source "SettingNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingNotifyValue"
.end annotation


# instance fields
.field final mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

.field final mPrevValue:I

.field final mValue:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "value"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mPrevValue:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;IILcom/samsung/android/app/galaxyraw/setting/SettingNotifier$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    return-void
.end method
