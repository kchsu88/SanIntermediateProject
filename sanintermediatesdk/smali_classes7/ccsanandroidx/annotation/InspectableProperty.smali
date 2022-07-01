.class public interface abstract annotation Lccsanandroidx/annotation/InspectableProperty;
.super Ljava/lang/Object;
.source "InspectableProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lccsanandroidx/annotation/InspectableProperty;
        attributeId = 0x0
        enumMapping = {}
        flagMapping = {}
        hasAttributeId = true
        name = ""
        valueType = .enum Lccsanandroidx/annotation/InspectableProperty$ValueType;->INFERRED:Lccsanandroidx/annotation/InspectableProperty$ValueType;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/annotation/InspectableProperty$ValueType;,
        Lccsanandroidx/annotation/InspectableProperty$FlagEntry;,
        Lccsanandroidx/annotation/InspectableProperty$EnumEntry;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract attributeId()I
.end method

.method public abstract enumMapping()[Lccsanandroidx/annotation/InspectableProperty$EnumEntry;
.end method

.method public abstract flagMapping()[Lccsanandroidx/annotation/InspectableProperty$FlagEntry;
.end method

.method public abstract hasAttributeId()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract valueType()Lccsanandroidx/annotation/InspectableProperty$ValueType;
.end method
