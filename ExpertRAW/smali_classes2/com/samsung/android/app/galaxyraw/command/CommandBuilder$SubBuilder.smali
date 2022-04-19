.class interface abstract Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$SubBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SubBuilder"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract build(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "receiver",
            "id",
            "subCommand"
        }
    .end annotation
.end method
