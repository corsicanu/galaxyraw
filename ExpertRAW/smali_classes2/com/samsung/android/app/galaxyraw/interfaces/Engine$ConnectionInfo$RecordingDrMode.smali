.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingDrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

.field public static final enum HDR10:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

.field public static final enum SDR:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    const-string v1, "SDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->SDR:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    const-string v3, "HDR10"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR10:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    return-object v0
.end method
