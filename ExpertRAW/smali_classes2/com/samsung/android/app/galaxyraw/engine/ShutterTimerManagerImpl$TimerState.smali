.class final enum Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;
.super Ljava/lang/Enum;
.source "ShutterTimerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TimerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

.field public static final enum IDLE:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

.field public static final enum REQUESTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

.field public static final enum STARTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->IDLE:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    const-string v3, "REQUESTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->STARTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    return-object v0
.end method
