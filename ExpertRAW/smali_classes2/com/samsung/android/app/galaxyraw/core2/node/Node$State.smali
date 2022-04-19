.class public final enum Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
.super Ljava/lang/Enum;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$State$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

.field public static final enum ACTIVATED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

.field public static final enum DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

.field public static final enum DEINITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

.field public static final enum INITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

.field public static final enum INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    const-string v1, "DEINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    const-string v7, "DEINITIALIZING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    const-string v9, "ACTIVATED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->ACTIVATED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    return-object v0
.end method


# virtual methods
.method public checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State$Rule;->access$000()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "invalid state %s -> %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
