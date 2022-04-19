.class public final enum Lcom/samsung/android/apex/motionphoto/composer/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/apex/motionphoto/composer/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum LOADED:Lcom/samsung/android/apex/motionphoto/composer/State;

.field public static final enum UNINITIALIZED:Lcom/samsung/android/apex/motionphoto/composer/State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->UNINITIALIZED:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->LOADED:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v3, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v5, "IDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v5, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v7, "EXECUTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    new-instance v7, Lcom/samsung/android/apex/motionphoto/composer/State;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/apex/motionphoto/composer/State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/apex/motionphoto/composer/State;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static connected()[Lcom/samsung/android/apex/motionphoto/composer/State;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static disconnected()[Lcom/samsung/android/apex/motionphoto/composer/State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->UNINITIALIZED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->LOADED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static unloaded()[Lcom/samsung/android/apex/motionphoto/composer/State;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->UNINITIALIZED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/State;
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/apex/motionphoto/composer/State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/apex/motionphoto/composer/State;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v0}, [Lcom/samsung/android/apex/motionphoto/composer/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    return-object v0
.end method
