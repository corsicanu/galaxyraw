.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;


# instance fields
.field private final mTimerDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v1, "TIMER_2S"

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v3, "TIMER_5S"

    const/4 v4, 0x1

    const/16 v5, 0x1388

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v5, "TIMER_10S"

    const/4 v6, 0x2

    const/16 v7, 0x2710

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v7, "TIMER_ONESHOT"

    const/4 v8, 0x3

    const/16 v9, 0x5dc

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "timerDuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->mTimerDuration:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object v0
.end method


# virtual methods
.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->mTimerDuration:I

    return p0
.end method
