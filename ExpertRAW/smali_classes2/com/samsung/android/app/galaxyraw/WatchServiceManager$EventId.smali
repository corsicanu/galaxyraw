.class final enum Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;
.super Ljava/lang/Enum;
.source "WatchServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/WatchServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum CAMERA_TERMINATED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum CHANGE_EXTRA_SURFACE_LAYOUT:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_CAMERA_SETTING_ACTIVITY_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_CURRENT_STATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_RECORDING_PAUSED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_RECORDING_RESUMED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_RECORDING_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_RECORDING_STOPPED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_THUMBNAIL_UPDATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

.field public static final enum NOTIFY_ZOOM_RANGE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v1, "CAMERA_TERMINATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->CAMERA_TERMINATED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v3, "CHANGE_EXTRA_SURFACE_LAYOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->CHANGE_EXTRA_SURFACE_LAYOUT:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v5, "NOTIFY_CURRENT_STATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_CURRENT_STATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v7, "NOTIFY_THUMBNAIL_UPDATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_THUMBNAIL_UPDATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v9, "NOTIFY_CAMERA_SETTING_ACTIVITY_STARTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_CAMERA_SETTING_ACTIVITY_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v11, "NOTIFY_RECORDING_RESUMED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_RESUMED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v13, "NOTIFY_RECORDING_STARTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v15, "NOTIFY_RECORDING_PAUSED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_PAUSED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v15, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v14, "NOTIFY_RECORDING_STOPPED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_STOPPED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    new-instance v14, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const-string v12, "NOTIFY_ZOOM_RANGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_ZOOM_RANGE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

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

    sput-object v12, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    return-object v0
.end method
