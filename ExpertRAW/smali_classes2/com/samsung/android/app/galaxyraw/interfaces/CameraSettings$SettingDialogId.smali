.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;
.super Ljava/lang/Enum;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingDialogId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum CONFIRM_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum DEFAULT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA_CHINA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA_CHINA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum SECURE_LOCK_IN_CONTACT_US:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

.field public static final enum SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->DEFAULT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v3, "CONFIRM_RESET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v5, "LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v7, "LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v9, "GPS_EULA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v11, "GPS_EULA_CHINA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v13, "GPS_EULA_FROM_SETTING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v15, "GPS_EULA_CHINA_FROM_SETTING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v14, "SECURE_LOCK_IN_CONTACT_US"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_CONTACT_US:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    new-instance v14, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const-string v12, "SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    return-object v0
.end method
