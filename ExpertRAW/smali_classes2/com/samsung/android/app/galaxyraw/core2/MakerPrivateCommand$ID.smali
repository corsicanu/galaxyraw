.class public final enum Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;
.super Ljava/lang/Enum;
.source "MakerPrivateCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

.field public static final enum REQUEST_SLOWMOTION_EVENT_RESULT:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

    const-string v1, "REQUEST_SLOWMOTION_EVENT_RESULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;->REQUEST_SLOWMOTION_EVENT_RESULT:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

    aput-object v0, v1, v2

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand$ID;

    return-object v0
.end method
