.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;
.super Ljava/lang/Enum;
.source "RecordingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

.field public static final enum CANCEL:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

.field public static final enum IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

.field public static final enum PAUSE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

.field public static final enum RESUME:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

.field public static final enum START:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

.field public static final enum STOP:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->START:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->PAUSE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    const-string v7, "RESUME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->RESUME:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    const-string v9, "STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    const-string v11, "CANCEL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;

    return-object v0
.end method
