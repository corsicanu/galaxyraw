.class public final enum Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;
.super Ljava/lang/Enum;
.source "SceneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

.field public static final enum ANALYZING:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

.field public static final enum IDLE:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

.field public static final enum MONITORING:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

.field public static final enum WAITING:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;


# instance fields
.field private aeState:Ljava/lang/Integer;

.field private afMode:Ljava/lang/Integer;

.field private afState:Ljava/lang/Integer;

.field private brightnessValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    const-string v3, "MONITORING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->MONITORING:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    const-string v5, "WAITING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->WAITING:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    const-string v7, "ANALYZING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->ANALYZING:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;

    return-object v0
.end method


# virtual methods
.method public getBrightnessValue()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->brightnessValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public isAeAfLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->aeState:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAeConverged()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->aeState:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->aeState:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAeSearchingStarted()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->aeState:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAfScanCompleted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAfScanStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isBrightnessValueChanged(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "analyzedBrightnessValue"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->brightnessValue:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0x4b

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInactiveAfStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afMode:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setAeState(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->aeState:Ljava/lang/Integer;

    return-void
.end method

.method public setAfMode(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "afMode"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afMode:Ljava/lang/Integer;

    return-void
.end method

.method public setAfState(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "afState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->afState:Ljava/lang/Integer;

    return-void
.end method

.method public setBrightnessValue(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightnessValue"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$State;->brightnessValue:Ljava/lang/Integer;

    return-void
.end method
