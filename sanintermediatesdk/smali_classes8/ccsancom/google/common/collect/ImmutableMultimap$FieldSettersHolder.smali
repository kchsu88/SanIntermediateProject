.class Lccsancom/google/common/collect/ImmutableMultimap$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldSettersHolder"
.end annotation


# static fields
.field static final MAP_FIELD_SETTER:Lccsancom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Serialization$FieldSetter<",
            "Lccsancom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE_FIELD_SETTER:Lccsancom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Serialization$FieldSetter<",
            "Lccsancom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 336
    const-class v0, Lccsancom/google/common/collect/ImmutableMultimap;

    .line 337
    const-string v1, "map"

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lccsancom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lccsancom/google/common/collect/Serialization$FieldSetter;

    .line 338
    const-class v0, Lccsancom/google/common/collect/ImmutableMultimap;

    .line 339
    const-string/jumbo v1, "size"

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lccsancom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lccsancom/google/common/collect/Serialization$FieldSetter;

    .line 338
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
