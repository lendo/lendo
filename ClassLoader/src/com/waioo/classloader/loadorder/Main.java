package com.waioo.classloader.loadorder;

/**
 * ������Ҫ��Ϊ����֤ClassLoader�������˳��
 * ��ִ��ʱ��Ҫ����"jvm -verbose:class"
 * Ȼ��鿴��ļ���˳�򣬳���ִ��˳���Լ���Щ��ᱻ����
 * 
 * version 1.0 by Dan Du
 * 2009-9-15 ����04:11:17
 * @author Dan Du
 */
public class Main {
	public static void main(String[] args) {
		A a = new A();
		a.print();
		
//		B b = new B();
//		b.print();
		
        B b = null; //������������δ���ɾ����ִ�д˶δ��룬ע����B�Ƿ�ᱻ����
	}
}
