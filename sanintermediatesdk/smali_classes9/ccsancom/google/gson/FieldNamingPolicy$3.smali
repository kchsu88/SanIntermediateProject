.class final enum Lccsancom/google/gson/FieldNamingPolicy$3;
.super Lccsancom/google/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILccsancom/google/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 74
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v1}, Lccsancom/google/gson/FieldNamingPolicy$3;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/gson/FieldNamingPolicy$3;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
