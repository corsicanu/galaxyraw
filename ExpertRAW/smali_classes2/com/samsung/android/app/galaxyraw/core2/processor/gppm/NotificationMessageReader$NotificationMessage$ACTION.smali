.class public final enum Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
.super Ljava/lang/Enum;
.source "NotificationMessageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

.field public static final enum REQUEST:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

.field public static final enum START:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

.field public static final enum STOP:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->REQUEST:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->START:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    const-string v5, "STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->STOP:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

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
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->code:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->of()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(I)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->valueOf(I)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$valueOf$0(ILcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;)Z
    .locals 0

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->of()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private of()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->code:I

    return p0
.end method

.method private static valueOf(I)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->values()[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$NotificationMessage$ACTION$7CnYu0H5M9Rz77sCnGQsnuIwTOY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$NotificationMessage$ACTION$7CnYu0H5M9Rz77sCnGQsnuIwTOY;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    return-object v0
.end method
